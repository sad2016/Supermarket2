class AddPackageSizeToProducts < ActiveRecord::Migration
  def change
    add_column :products, :package_size, :integer
  end
end
