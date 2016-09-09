class AddSpecialistUserIdToTopics < ActiveRecord::Migration
  def change
    add_reference :topics, :specialist_user, index: true, foreign_key: true
  end
end
