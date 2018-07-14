class User < ActiveRecord::Base
	#tests at test/models/user_test.rb

	validates :name, presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: {maximum: 50}, format: {with: VALID_EMAIL_REGEX }, uniqueness: true
	validates :password, presence: true
	
	has_secure_password
end
