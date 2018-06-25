class User < ApplicationRecord
  # linking user table to test table with one to one relationship
  before_save { self.email = email.downcase}
  #validates username availability, length validation and uniqueness
  validates :username, presence: true,
  uniqueness: { case_sensitive: false } ,
  length: { minimum: 3, maximum: 25 }
  #validates if email has been entered and checks for valid characters
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
  uniqueness: { case_sensitive: false },
  length: { maximum: 105 } ,
  format: { with: VALID_EMAIL_REGEX }
  has_secure_password
end
