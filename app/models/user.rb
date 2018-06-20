class User < ApplicationRecord
  #validates username availability, length validation and uniqueness
  validates :username, presence: true,
  uniqueness: { case_sensitive: false } ,
  length: { minimum: 3, maximum: 25 }
  #validates if email has been entered and checks for valid characters
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
  uniqueness: { case_sensitive: false }
  length: { maximum: 105 }
  fomat: { with: VALID_EMAIL_REGEX }


end
