json.array!(@volunteers) do |volunteer|
  json.extract! volunteer, :id, :name, :yob, :phone, :email
  json.url volunteer_url(volunteer, format: :json)
end
