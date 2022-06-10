class Author < ApplicationRecord
	#Association
	has_many :books, dependent: :nullify
end
