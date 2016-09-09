class AddHospitalIdToRooms < ActiveRecord::Migration
  def change
    add_reference :rooms, :hospital, index: true, foreign_key: true
  end
end
