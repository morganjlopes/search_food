class RemoveFrequencyFromAgencies < ActiveRecord::Migration
  def change
  	remove_column :agencies, :frequency, :text
  end
end
