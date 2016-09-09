class AddColumnToServicesToServicesProvider < ActiveRecord::Migration
  def change
  	add_column :services_to_service_providers, :service_id, :integer
    add_column :services_to_service_providers, :service_provider_id, :integer
  end
end
