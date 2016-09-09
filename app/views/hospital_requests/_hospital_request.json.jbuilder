json.extract! hospital_request, :id, :name, :email, :telephone, :message, :created_at, :updated_at
json.url hospital_request_url(hospital_request, format: :json)