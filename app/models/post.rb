class Post < ApplicationRecord
	belongs_to :user, required: false
	belongs_to :category, required: false
	has_many :comments
end
