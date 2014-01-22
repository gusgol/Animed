json.array!(@services) do |service|
  json.extract! service, :id, :name, :client_id, :animal_id, :service_date, :description, :price
  json.url service_url(service, format: :json)
end
