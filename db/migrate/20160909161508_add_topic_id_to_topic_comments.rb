class AddTopicIdToTopicComments < ActiveRecord::Migration
  def change
    add_reference :topic_comments, :topic, index: true, foreign_key: true
  end
end
