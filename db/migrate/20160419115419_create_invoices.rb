class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.decimal :total_amount_purchased
      t.timestamp :purchase_date
      t.references :payment_type, index: true, foreign_key: true
      t.text :delivery_address
      t.timestamp :delivery_date
      t.timestamp :recieve_date
      t.references :delivery_status, index: true, foreign_key: true
      t.string :customer_name
      t.string :customer_email
      t.string :customerphone

      t.timestamps null: false
    end
  end
end
