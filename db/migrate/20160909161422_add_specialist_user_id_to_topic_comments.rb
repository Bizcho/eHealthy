class AddSpecialistUserIdToTopicComments < ActiveRecord::Migration
  def change
    add_reference :topic_comments, :specialist_user, index: true, foreign_key: true
  end
end
