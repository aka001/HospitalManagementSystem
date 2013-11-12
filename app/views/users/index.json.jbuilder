json.array!(@users) do |user|
  json.extract! user, :name, :salt, :password
  json.url user_url(user, format: :json)
end
