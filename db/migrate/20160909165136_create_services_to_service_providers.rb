class CreateServicesToServiceProviders < ActiveRecord::Migration
  def change
    create_table :services_to_service_providers do |t|

      t.timestamps null: false
    end
  end
end
