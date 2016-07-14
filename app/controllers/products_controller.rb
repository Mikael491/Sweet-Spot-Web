class ProductsController < ApplicationController
  # http_basic_authenticate_with name: "admin", password: "secret", only: [:new, :edit, :destroy]
  before_action :find_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:success] = "Product was added successfully!"
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def new
    @product = Product.new
    @categories = Category.all.map {|category| [category.name, category.id]}
  end

  def edit
    # @product = Product(params[id])
  end

  def update
    if @product.update(product_params)
      flash[:success] = "Product was updated successfully!"

      redirect_to root_path
    else
      render :edit
    end
  end
  
  def destroy
    @product.destroy
    flash[:danger] = "Kicks were deleted successfully!"
    redirect_to admin_index_path
  end


  private 
  
  def find_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price, :image, :quantity)
  end

end
