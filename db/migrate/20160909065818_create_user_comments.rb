class CreateUserComments < ActiveRecord::Migration
  def change
    create_table :user_comments do |t|
      t.string :subject
      t.string :message

      t.timestamps null: false
    end
  end
end
