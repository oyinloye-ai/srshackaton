json.extract! message, :id, :sent_at, :content, :created_at, :updated_at
json.url message_url(message, format: :json)