class AddClinicProfileIdToClinicEvents < ActiveRecord::Migration
  def change
    add_reference :clinic_events, :clinic_profile, index: true, foreign_key: true
  end
end
