class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string   :name
      t.string   :street_line_1
      t.string   :street_line_2
      t.string   :city
      t.string   :state
      t.string   :zip

      t.timestamps
    end
  end
end
