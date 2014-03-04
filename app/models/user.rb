class User < ActiveRecord::Base
  include User::AuthDefinitions
  include User::Roles

  has_many :identities
  
  validates_presence_of :username, :email, :first_name, :last_name
  validates :username, uniqueness: true, if: -> {self.username.present?}
  validates :email, uniqueness: true, if: -> {self.email.present?}

  def full_name
    "#{first_name} #{last_name}"
  end

end
