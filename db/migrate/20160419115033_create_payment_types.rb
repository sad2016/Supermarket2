class CreatePaymentTypes < ActiveRecord::Migration
  def change
    create_table :payment_types do |t|
      t.string :name_of_payment_type

      t.timestamps null: false
    end
  end
end
