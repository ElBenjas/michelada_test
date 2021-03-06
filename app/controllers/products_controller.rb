class ProductsController < ApplicationController
  before_action :find_product, only:[:show, :edit, :update, :destroy]

  def index
    @products = Product.all
    @total = @products.sum(&:price)
  end

  def show
  end

  def new
    @product = Product.new(params[:id])
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to @product
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @product.update_attributes(product_params)
      redirect_to @product
    else
      render 'edit'
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end


  private
    def find_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :brand_id, :description, :price)
    end
end
