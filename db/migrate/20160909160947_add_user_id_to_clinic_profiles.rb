class AddUserIdToClinicProfiles < ActiveRecord::Migration
  def change
    add_reference :clinic_profiles, :user, index: true, foreign_key: true
  end
end
