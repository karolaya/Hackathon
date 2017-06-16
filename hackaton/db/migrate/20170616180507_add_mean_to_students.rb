class AddMeanToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :mean, :float
  end
end
