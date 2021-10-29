json.extract! event, :id, :name, :starts_at, :ends_at, :user_id, :created_at, :updated_at
json.url event_url(event, format: :json)
