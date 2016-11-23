json.extract! location, :id, :street_address, :city, :state_id, :zipcode, :name, :description, :created_at, :updated_at
json.url location_url(location, format: :json)