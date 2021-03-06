class Post < ApplicationRecord
	belongs_to :user
	has_many :comments

	validates :name, presence: true
	validates :body, presence: true, length: { minimum: 250 }
	
end
