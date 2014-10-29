json.array!(@cars) do |car|
  json.extract! car, :id, :make, :model, :garage_id, :user_id
  json.url car_url(car, format: :json)
end
