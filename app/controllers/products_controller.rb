class ProductsController < ApplicationController
  before_action :find_product, only: [:show]
  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
    @console = Console.all
    @category = Category.all
  end

  def create
    @product = Product.new(params_product)
    if @product.save
      redirect_to @product, notice: "Product created"
    else
      render :new
    end
  end

  def pc
    @products = Product.where(console_id: 1)
  end

  def play4
    @products = Product.where(console_id: 2)
  end

  def switch
    @products = Product.where(console_id: 4)
  end

  def xbox_one
    @products = Product.where(console_id: 3)
  end
  private

  def params_product
    params.require(:product).permit(
      :name,
      :description,
      :price,
      :quantity,
      :out_date,
      :url_trailer,
      :image_one,
      :image_two,
      :image_three,
      :console_id,
      :category_id
    )
  end

  def find_product
    @product = Product.find(params[:id])
  end
end
