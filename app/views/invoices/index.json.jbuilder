json.array!(@invoices) do |invoice|
  json.extract! invoice, :id, :total_amount_purchased, :purchase_date, :payment_type_id, :delivery_address, :delivery_date, :recieve_date, :delivery_status_id, :customer_name, :customer_email, :customerphone
  json.url invoice_url(invoice, format: :json)
end
