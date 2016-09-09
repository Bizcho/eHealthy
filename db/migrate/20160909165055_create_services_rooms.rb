class CreateServicesRooms < ActiveRecord::Migration
  def change
    create_table :services_rooms do |t|

      t.timestamps null: false
    end
  end
end
