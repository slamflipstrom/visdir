class User < ActiveRecord::Base
  attr_accessible :email, :name, :twitter, :password, :password_confirmation
  has_many :listings
  
  has_secure_password
  validates :email, uniqueness: true
end
