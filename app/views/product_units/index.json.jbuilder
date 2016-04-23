json.array!(@product_units) do |product_unit|
  json.extract! product_unit, :id, :product_unit_name, :product_unit_abbreviation
  json.url product_unit_url(product_unit, format: :json)
end
