class PurchasesController < ApplicationController
    before_action :authenticate_user!

    def index 
        @purchases = Purchase.all
        products = []
        @purchases.each do |pur|
            pur.products.each do |p|
                products.push(p.name)
            end 
        end 
        @tally = products.tally 
        authorize @purchases
    end 

    def new
        @purchase = Purchase.new
        @listing = Listing.find(1)
        authorize @purchases
    end 

    def create 
        @purchase = Purchase.new(purchase_params)
        @listing = Listing.find(1)
        if @purchase.save!
            redirect_to total_purchase_path(id: @purchase.id)
        end 
        authorize @purchases
    end 

    def total 
        @purchase = Purchase.find(params[:id])
        arr_prices = []
        @purchase.products.each do |product|
            arr_prices.push(product.price)
        end 
        @total_price = arr_prices.sum 
        authorize @purchases
    end 

    def new_search
    end 

    def search_date 
        @purchases = Purchase.where(:created_at => params[:from]..params[:to])
        authorize @purchases
    end 

    private 
    def purchase_params 
        params.require(:purchase).permit(product_ids: [])
    end 
end
