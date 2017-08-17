class Cart < ApplicationRecord
  has_many :lineitems, dependent: :destroy

  def total_price(cart_id)
    @sum = 0
    cart = Cart.find_by_id(cart_id)
    if cart 
      cart.lineitems.each do |item|
        @sum += item.product.price * item.quantity
      end
    end
    return @sum
  end
end
