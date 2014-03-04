module User::AuthDefinitions
  extend ActiveSupport::Concern
  
   included do

    # Include default devise modules. Others available are:
    # :token_authenticatable, :confirmable,
    # :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable, :confirmable, :omniauthable

    # Password not required when using omniauth
    def password_required?
      super && identities.empty?
    end

    # Confirmation not required when using omniauth
    def confirmation_required?
      super && identities.empty?
    end

    def update_with_password(params, *options)
      if encrypted_password.blank?
        update_attributes(params, *options)
      else
        super
      end
    end

  end
end