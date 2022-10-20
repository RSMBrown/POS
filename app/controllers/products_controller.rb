class ProductsController < ApplicationController
    before_action :authenticate_user!

    def index 
        @products = Product.all
        authorize @products
    end 

    def show 
        @product = Product.find(params[:id])
        authorize @product
    end 

    def new 
        @product = Product.new
        authorize @product
    end 

    def create 
        @product = Product.create!(product_params)

        if @product.save 
            redirect_to @product
        else 
            render :new 
        end 
        authorize @product
    end 

    def edit 
        @product = Product.find(params[:id])
        authorize @product
    end 

    def update 
        @product = Product.find(params[:id])

        if @product.update(product_params) 
            redirect_to @product
        else 
            render :new 
        end 
        authorize @product
    end 

    def destroy 
        @product = Product.find(params[:id])
        @product.destroy

        redirect_to products_path
        authorize @product
    end 

    private 
    def product_params 
        params.require(:product).permit(:name, :price, :description)
    end 

end
