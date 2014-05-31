class RemoveAddressName < ActiveRecord::Migration
  def change
  	remove_column :addresses, :name, :string
  	add_column :agencies, :name, :string
  end
end
