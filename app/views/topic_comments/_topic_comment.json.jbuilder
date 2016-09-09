json.extract! topic_comment, :id, :message, :response_to, :created_at, :updated_at
json.url topic_comment_url(topic_comment, format: :json)