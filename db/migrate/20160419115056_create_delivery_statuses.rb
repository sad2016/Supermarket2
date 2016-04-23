class CreateDeliveryStatuses < ActiveRecord::Migration
  def change
    create_table :delivery_statuses do |t|
      t.string :status_name

      t.timestamps null: false
    end
  end
end
