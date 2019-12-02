class ProductsController < ApplicationController
    before_action :product, only: %i[show edit update]

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

    def show
    end

    def edit
    end

    def update
      if @product.update(product_params)
        redirect_to @product
      else
        render action: 'edit'
      end
    end

    def destroy
      @product = Product.find(params[:id])
      @product.delete
      redirect_to products_path
    end

    private

    def product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:id, :title, :description, :image_url, :price)
    end
end
