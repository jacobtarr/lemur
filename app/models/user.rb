class User < ActiveRecord::Base
	before_save { self.email = email.downcase }
	validates :name,  presence: true, length: { maximum: 50 }
	VALID_USERNAME_REGEX = /\A[a-z0-9\-_]+\z/
	validates :username, presence: true, length: { maximum: 20 },
										format: { with: VALID_USERNAME_REGEX },
										uniqueness: { case_sensitive: false }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, length: { minimum: 6 }
  validate :user_location
  validates :about_me, length: { maximum: 160 }
  validate :website
end