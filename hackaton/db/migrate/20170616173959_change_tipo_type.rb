class ChangeTipoType < ActiveRecord::Migration[5.1]
  def change
  	change_column :institutions, :tipo, :integer
  end
end
