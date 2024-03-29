class User < ActiveRecord::Base

  # Add validation for checking if name and email exist
  # and are unique

  validates_presence_of :name
  validates_uniqueness_of :name, :email, :case_sensitive => false
 
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
end
