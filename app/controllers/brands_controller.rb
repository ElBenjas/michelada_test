class BrandsController < ApplicationController
  before_action :find_brand, only:[:show, :edit, :update, :destroy]

  def index
    @brands = Brand.all
  end

  def show
  end

  def new
    @brand = Brand.new(params[:id])
  end

  def create
    @brand = Brand.new(brand_params)

    if @brand.save
      flash[:success] = "Brand created."
      redirect_to @brand
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @brand.update_attributes(brand_params)
      redirect_to @brand
    else
      render 'edit'
    end
  end

  def destroy
    @brand.destroy
    redirect_to brands_path
  end

  private
    def find_brand
      @brand = Brand.find(params[:id])
    end

    def brand_params
      params.require(:brand).permit(:name)
    end
end
