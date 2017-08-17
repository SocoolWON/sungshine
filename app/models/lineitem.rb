class Lineitem < ApplicationRecord
  belongs_to :user
  belongs_to :product
  belongs_to :order, optional: true
  belongs_to :cart

=begin
  def total_price(item)
    return item.quantity * Product.find(item.product_id).price
  end
=end
end
