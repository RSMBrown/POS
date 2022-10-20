class ReturnsController < ApplicationController
    before_action :authenticate_user!

    def index 
        @returns = Return.all
        products = []
        @returns.each do |r|
            r.products.each do |p|
                products.push(p.name)
            end 
        end 
        @tally = products.tally
        authorize @returns
    end 

    def show 
        @return = Return.find(params[:id])
        authorize @return
    end 

    def new 
        @return = Return.new
        authorize @return
    end 

    def create 
        @return = Return.create(return_params)

        if @return.save 
            redirect_to return_path(@return)
        else 
            render :new 
        end 
        authorize @return
    end 

    private 
    def return_params 
        params.permit(product_ids: [])
    end 
end
