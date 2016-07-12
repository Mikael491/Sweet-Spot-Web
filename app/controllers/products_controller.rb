class ProductsController < ApplicationController
  before_action :find_product, only: [:show, :edit, :update, :destroy]
  def index
    @products = Product.all
  end
  def show
  end
  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end
  def new
    @product = Product.new
  end
  def edit
    # @product = Product(params[id])
  end
  def update
  end
  def destroy
    @product.destroy
    redirect_to root_path
  end

  private 
  def find_product
    @product = Product.find(params[:id])
  end
  def product_params
    params.require(:product).permit(:name, :description, :price)
  end

end
