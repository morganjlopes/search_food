json.array!(@agencies) do |agency|
  json.extract! agency, :id, :restrictions, :hours_of_operation, :address_id, :contact_name, :contact_phone, :contact_email, :services, :geographic_restrictions, :family_stipulations, :faith_based, :is_active, :general_information
  json.url agency_url(agency, format: :json)
end
