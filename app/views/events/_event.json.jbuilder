json.extract! event, :id, :name, :description, :Location_id, :drop_in, :leader_id, :created_at, :updated_at
json.url event_url(event, format: :json)