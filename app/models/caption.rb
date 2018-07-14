class Caption < ActiveRecord::Base
	#tests at tests/models/caption_test.rb
	validates :title, presence: true, uniqueness: true
	validates :content, presence: true
end
