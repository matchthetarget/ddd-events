json.extract! interest_level, :id, :level, :user_id, :event_id, :created_at,
              :updated_at
json.url interest_level_url(interest_level, format: :json)
