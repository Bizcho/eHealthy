class Hospital < ActiveRecord::Base
	has_many :service_providers
	has_many :rooms
end
