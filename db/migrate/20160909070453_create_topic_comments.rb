class CreateTopicComments < ActiveRecord::Migration
  def change
    create_table :topic_comments do |t|
      t.string :message
      t.integer :response_to

      t.timestamps null: false
    end
  end
end
