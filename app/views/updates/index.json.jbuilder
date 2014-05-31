json.array!(@updates) do |update|
  json.extract! update, :id, :content
  json.url update_url(update, format: :json)
end
