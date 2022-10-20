class ProductsController < ApplicationController

    def index 
        @products = Product.all
    end 

    def show 
        @product = Product.find(params[:id])
    end 

    def new 
        @product = Product.new
    end 

    def create 
        @product = Product.create(product_params)

        if @product.save 
            redirect_to @product
        else 
            render :new 
        end 
    end 

    def edit 
        @product = Product.find(params[:id])
    end 

    def update 
        @product = Product.find(params[:id])

        if @product.update(product_params) 
            redirect_to @product
        else 
            render :new 
        end 
    end 

    def destory 
        @product = Product.find(params[:id])
        @product.destory

        redirect_to products_path
    end 

    private 
    def product_params 
        params.require(:product).permit(:name, :price, :description)
    end 

end
