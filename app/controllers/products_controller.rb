class ProductsController < ApplicationController

  def index
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
    if @product.save
      flash[:success] = 'Produto cadastrado com sucesso'
      redirect_to root_path
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
  end

  private
    def product_params
        params.require(:product).permit(:name, :price)
    end
end
