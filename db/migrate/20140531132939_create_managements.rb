class CreateManagements < ActiveRecord::Migration
  def change
    create_table :managements do |t|
      t.integer :user_id
      t.integer :agency_id

      t.timestamps
    end
  end
end
