json.array!(@clients) do |client|
  json.extract! client, :id, :name, :address, :cep, :telephone, :cellphone, :email, :cellphone, :email, :birthdate, :cpf
  json.url client_url(client, format: :json)
end
