class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.string :name
      t.date :yob
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
