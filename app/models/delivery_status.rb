class DeliveryStatus < ActiveRecord::Base
  has_many :invoices
end
