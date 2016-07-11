class ProductsController < ApplicationController
  before_action :find_product, only: [:show, :edit, :update, :destory]
  def index
    @products = Product.all
  end
  def show
  end
  def create
  end
  def new
  end
  def edit
    # @product = Product(params[id])
  end
  def update
  end
  def destroy
  end

  private 
  def find_product
    @product = Product.find(params[:id])
  end
  def product_params

  end

end
