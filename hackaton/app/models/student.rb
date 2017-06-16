class Student < ApplicationRecord
	validates :identificacion, presence: true
	validates :nombre, presence: true
	belongs_to :institution
end