class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy] 

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end 

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to product_path(@product)
    else
      redirect_to :back
    end
  end

  def update
    if @product.update(product_params)
      redirect_to product_path(@product)
    else
      redirect_to :back
    end
  end

  def edit
  end

  def show
  end

  def destroy
    if @product.destroy
      redirect_to products_path
    else
      redirect_to :back
    end
  end

  private
    def product_params
      params.require(:product).permit(:title, :category, :description, :feature, :image_url, :price, :admin_id)
    end

    def set_product
      @product = Product.find(params[:id])
    end
end
