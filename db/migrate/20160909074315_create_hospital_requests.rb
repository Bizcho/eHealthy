class CreateHospitalRequests < ActiveRecord::Migration
  def change
    create_table :hospital_requests do |t|
      t.string :name
      t.string :email
      t.string :telephone
      t.string :message

      t.timestamps null: false
    end
  end
end
