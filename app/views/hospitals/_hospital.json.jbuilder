json.extract! hospital, :id, :name, :address, :telephone, :city, :state, :country, :specialty, :ubication, :created_at, :updated_at
json.url hospital_url(hospital, format: :json)