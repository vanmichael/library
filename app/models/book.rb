class Book < ActiveRecord::Base
	has_one :checkout
	has_many :categorizations
	validates_presence_of :title
	validates_presence_of :author
	validates_numericality_of :rating, less_than_or_equal_to: 100, greater_than_equal_to: 0, allow_blank: true
	validates_uniqueness_of :title, scope: :author

	class << self

		def seed
			book = find_or_initialize_by(title: "Van's Cool", author: "John")
			book.save!
		end

	end
end
