json.array!(@coin_flips) do |coin_flip|
  json.extract! coin_flip, :id, :name
  json.url coin_flip_url(coin_flip, format: :json)
end
