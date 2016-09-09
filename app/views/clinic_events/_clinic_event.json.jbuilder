json.extract! clinic_event, :id, :diagnostic, :prediagnostic, :symptoms, :date_start, :date_finish, :prescription, :created_at, :updated_at
json.url clinic_event_url(clinic_event, format: :json)