json.array!(@animals) do |animal|
  json.extract! animal, :id, :name, :race, :birthdate, :image_url, :description
  json.url animal_url(animal, format: :json)
end
