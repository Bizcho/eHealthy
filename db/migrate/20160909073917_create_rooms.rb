class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :floor
      t.string :description

      t.timestamps null: false
    end
  end
end
