class ChangeDataTypeForPackageSize < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.change :package_size, :decimal
    end
  end
  def self.down
    change_table :products do |t|
      t.change :package_size, :decimal
    end
  end
end
