class CreateClinicEvents < ActiveRecord::Migration
  def change
    create_table :clinic_events do |t|
      t.string :diagnostic
      t.string :prediagnostic
      t.string :symptoms
      t.date :date_start
      t.date :date_finish
      t.string :prescription

      t.timestamps null: false
    end
  end
end
