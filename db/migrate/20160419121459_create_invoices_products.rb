class CreateInvoicesProducts < ActiveRecord::Migration
  def change
    create_table :invoices_products do |t|
      t.integer :invoice_id
      t.integer :product_id

      t.timestamps null: false
    end
  end
end
