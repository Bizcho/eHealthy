class Room < ActiveRecord::Base
	has_many :services_rooms
  	has_many :services, through: :services_rooms
end
