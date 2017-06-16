class Institution < ApplicationRecord
	enum tipo: [ :oficial, :privado ]
	has_many :students
	has_one :user
end