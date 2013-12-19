class Category < ActiveRecord::Base
	validates_presence_of :name
	validates_uniqueness_of :name
	has_many :books, through: :categorizations
	has_many :categorizations, inverse_of: :category

	class << self
		def seed
			category = Category.find_or_initialize_by(name: "Sam's Porn")
			category.save
		end
	end
end
