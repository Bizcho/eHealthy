class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :subject
      t.date :schedule
      t.string :comment

      t.timestamps null: false
    end
  end
end
