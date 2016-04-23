class Invoice < ActiveRecord::Base
  belongs_to :payment_type
  belongs_to :delivery_status
  has_and_belongs_to_many :products
end
