class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.integer :identificacion
      t.string :nombre
      t.integer :institution_id
      t.float :nota9a
      t.float :nota9e
      t.float :nota10a
      t.float :nota10e
      t.float :nota11a
      t.float :nota11e
      t.float :icfes

      t.timestamps
    end
  end
end
