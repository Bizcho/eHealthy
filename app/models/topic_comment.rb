class TopicComment < ActiveRecord::Base
	belongs_to :specialist_user
	belongs_to :topic
end
