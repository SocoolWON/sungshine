class CartsController < ApplicationController
  def show
    @cart = current_cart
    @lineitem = Lineitem.new
  end

  def destroy
  end
end
