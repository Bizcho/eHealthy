class AddColumnToServicesRoom < ActiveRecord::Migration
  def change
  	add_column :services_rooms, :room_id, :integer
    add_column :services_rooms, :service_id, :integer
  end
end
