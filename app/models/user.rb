class User < ApplicationRecord
  # Virtual attribute for authenticating by either username or email
  # This is in addition to a real persisted field like 'username'

  enum role: [:user, :vip, :admin]
  after_initialize :set_default_role, :if => :new_record?

  validates :username,
    :presence => true,
    :uniqueness => {
      :case_sensitive => false
  }

  # Validate username valdity and password complexity
  
  validates_format_of :username, with: /^[a-zA-Z0-9_\-\.]*$/, :multiline => true
  validates_format_of :password, with: /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d). /, :multiline => true
  

  def set_default_role
    self.role ||= :user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
