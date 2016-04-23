json.array!(@products) do |product|
  json.extract! product, :id, :product_name, :price, :amount_in_stock, :product_unit_id, :category_id
  json.url product_url(product, format: :json)
end
