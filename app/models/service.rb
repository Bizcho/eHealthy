class Service < ActiveRecord::Base
	belongs_to :user
	has_many :services_rooms
  	has_many :rooms, through: :services_rooms
  	has_many :services_to_service_providers
  	has_many :service_providers, through: :services_to_service_providers
end
