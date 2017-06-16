class AddInstitutionIdToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :institution_id, :integer
  end
end
