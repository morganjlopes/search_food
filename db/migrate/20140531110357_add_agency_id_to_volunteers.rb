class AddAgencyIdToVolunteers < ActiveRecord::Migration
  def change
    add_column :volunteers, :agency_id, :integer
  end
end
