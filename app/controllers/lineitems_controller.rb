class LineitemsController < ApplicationController
  before_action :set_lineitem, only: [:destroy, :update]
  def new 
    @lineitem = Lineitem.new
  end

  def create
    @cart = current_cart
    @lineitem = Lineitem.new(product_id: params[:product_id], cart_id: @cart.id, user_id: current_user.id)
    #Rails.logger.info(@lineitem.errors.inspect)
    respond_to do |format|
      if @lineitem.save
        format.html {  }
        format.json { head :no_content }
        format.js { render :layout => false  }
      else
        format.html {  }
        format.json { head :no_content, status: :unprocessable_entity }
      end
    end
  end

  def update_all
    @cart = current_cart
    items = params[:items]
    items.each do |k, v|
      for i in 0..@cart.lineitems.length-1
        k = k.to_i
        v = v.to_i
        if k == @cart.lineitems[i].product_id
          tmp_item = Lineitem.find_by(product_id: k, cart_id: @cart.id)
          tmp_item.quantity = v
          tmp_item.save
        end
      end
    end

    redirect_to new_order_path
  end

  def destroy
     @lineitem.destroy
     @cart = current_cart
  end

  private
    def lineitem_params
      params.require(:lineitem).permit(:product_id, :quantity)
    end

    def set_lineitem
      @lineitem = Lineitem.find(params[:id])
    end
end
