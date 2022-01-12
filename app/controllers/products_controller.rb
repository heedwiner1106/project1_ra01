class ProductsController < ApplicationController
  before_action :set_product, only: %i[show edit update destroy]

  def index
    @products = Product.limit(15)
  end

  def show
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to management_path
    else
      redirect_to '/admin'
    end
  end

  def update
  end

  def destroy
  end

  private
  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.permit(:name, :image, :description, :author, :company, :price, :discount, :product_category_id, :user_id)
  end
end
