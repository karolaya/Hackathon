class Institution < ApplicationRecord
	enum tipo: [ :oficial, :privado ]
	has_many :students
	has_one :user

	validates :nombre, presence: true
	validates :ciudad, presence: true
	validates :estrato, presence: true
end