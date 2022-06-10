class Author < ApplicationRecord
	#Association
	has_and_belongs_to_many :books
end
