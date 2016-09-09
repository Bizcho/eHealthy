class CreateHospitals < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
      t.string :name
      t.string :address
      t.string :telephone
      t.string :city
      t.string :state
      t.string :country
      t.string :specialty
      t.string :ubication

      t.timestamps null: false
    end
  end
end
