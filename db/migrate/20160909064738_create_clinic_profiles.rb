class CreateClinicProfiles < ActiveRecord::Migration
  def change
    create_table :clinic_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.string :relationship
      t.string :genre
      t.string :blood
      t.string :height
      t.string :weight

      t.timestamps null: false
    end
  end
end
