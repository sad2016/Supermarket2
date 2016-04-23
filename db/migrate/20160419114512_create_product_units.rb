class CreateProductUnits < ActiveRecord::Migration
  def change
    create_table :product_units do |t|
      t.string :product_unit_name
      t.string :product_unit_abbreviation

      t.timestamps null: false
    end
  end
end
