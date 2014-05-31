class AddAgycodeToAgencies < ActiveRecord::Migration
  def change
    add_column :agencies, :agycode, :string
  end
end
