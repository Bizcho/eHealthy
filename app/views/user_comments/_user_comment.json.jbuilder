json.extract! user_comment, :id, :subject, :message, :created_at, :updated_at
json.url user_comment_url(user_comment, format: :json)