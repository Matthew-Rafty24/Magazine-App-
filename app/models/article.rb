class Article < ActiveRecord::Base
	validates :title, presence: true, length: { minimum: 5, maximum: 150}
	has_many :comments
end 
