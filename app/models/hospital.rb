class Hospital < ActiveRecord::Base
	belongs_to :admin_service_provider
	has_many :service_providers
	has_many :rooms
end
