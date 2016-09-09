class Topic < ActiveRecord::Base
	belongs_to :specialist_user
	has_many   :topic_comments
end
