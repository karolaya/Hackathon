class Institution < ApplicationRecord
	enum tipo: [ :oficial, :privado ]
end
