class CreateAgentServices < ActiveRecord::Migration
  def change
    create_table :agent_services do |t|
      t.integer :agency_id
      t.integer :service_id

      t.timestamps
    end
  end
end
