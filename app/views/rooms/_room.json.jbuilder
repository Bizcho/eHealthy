json.extract! room, :id, :name, :floor, :description, :created_at, :updated_at
json.url room_url(room, format: :json)