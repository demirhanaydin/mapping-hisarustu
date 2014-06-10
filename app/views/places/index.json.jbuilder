json.array!(@places) do |place|
  json.extract! place, :id, :title, :address, :phone, :website, :latitude, :longitude
  json.url place_url(place, format: :json)
end
