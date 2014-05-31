class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.text     :content
      t.integer  :agency_id

      t.timestamps
    end
  end
end
