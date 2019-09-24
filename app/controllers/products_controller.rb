class ProductsController < ApplicationController
    def new
      @product = Product.new
    end

    def create
      @product = Product.new(product_params)
      if @product.valid?
        @product.save
        redirect_to products_path
      else
        render action: 'new'
      end
    end

    def index
      @products = Product.all
    end

    private

    def product_params
      params.require(:product).permit(:title, :description, :image_url, :price)
    end
end
