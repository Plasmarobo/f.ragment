class User < ActiveRecord::Base
  include User::AuthDefinitions
  include User::Roles

  has_many :identities
  
  validates_presence_of :email, :first_name, :last_name

  def full_name
    "#{first_name} #{last_name}"
  end

end
