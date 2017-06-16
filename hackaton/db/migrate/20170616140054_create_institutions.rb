class CreateInstitutions < ActiveRecord::Migration[5.1]
  def change
    create_table :institutions do |t|
      t.string :tipo
      t.string :ciudad
      t.integer :estrato

      t.timestamps
    end
  end
end
