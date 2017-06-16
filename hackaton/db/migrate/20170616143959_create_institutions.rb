class CreateInstitutions < ActiveRecord::Migration[5.1]
  def change
    create_table :institutions do |t|
      t.string :nombre
      t.string :ciudad
      t.string :tipo
      t.integer :estrato

      t.timestamps
    end
  end
end
