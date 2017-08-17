class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :destroy]
  def index
  end

  def new
    @cart = current_cart
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.status ="입금 대기 중"
    if @order.save
      empty_cart
      redirect_to order_path(@order)
    else
      redirect_to :back
    end
  end

  def show
  end

  def destroy
    @order.delete
    redirect_to products_path
  end

  private
    def order_params
      params.require(:order).permit(:address, :zip_code, :receiver, :phone_number, :requirements, :total_price, :user_id)
    end

    def set_order
      @order = Order.find(params[:id])
    end
end
