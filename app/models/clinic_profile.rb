class ClinicProfile < ActiveRecord::Base
	has_many :clinic_events
end
