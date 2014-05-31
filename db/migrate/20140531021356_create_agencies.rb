class CreateAgencies < ActiveRecord::Migration
  def change
    create_table :agencies do |t|
      t.text     :frequency
      t.text     :restrictions
      t.text     :hours_of_operation
      t.integer  :address_id
      t.string   :contact_name
      t.string   :contact_phone
      t.string   :contact_email
      t.integer  :services
      t.text     :geographic_restrictions
      t.integer  :family_stipulations
      t.boolean  :faith_based
      t.boolean  :is_active
      t.text     :general_information
      t.boolean  :acfb_certified

      t.timestamps
    end
  end
end
