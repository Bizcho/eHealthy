class AddHospitalIdToServiceProviders < ActiveRecord::Migration
  def change
    add_reference :service_providers, :hospital, index: true, foreign_key: true
  end
end
