json.extract! topic, :id, :subject, :description, :body, :created_at, :updated_at
json.url topic_url(topic, format: :json)