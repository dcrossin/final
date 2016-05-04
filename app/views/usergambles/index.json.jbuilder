json.array!(@usergambles) do |usergamble|
  json.extract! usergamble, :id, :part_no, :description, :qty, :price
  json.url usergamble_url(usergamble, format: :json)
end
