class Product < ActiveRecord::Base
  belongs_to :product_unit
  belongs_to :category
  has_and_belongs_to_many :invoices

end
