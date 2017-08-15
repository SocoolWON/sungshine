class LineitemsController < ApplicationController
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

  def destroy
     @lineitem.destroy
  end

  private
    def lineitem_params
      params.require(:lineitem).permit(:product_id, :quantity)
    end

    def set_lineitem
      @lineitem = Lineitem.find(params[:id])
    end
end
