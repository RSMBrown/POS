class ListingsController < ApplicationController
    before_action :authenticate_user!

    def show 
        @listing = Listing.find(1)
        authorize @listing
    end 

    def edit 
        @listing = Listing.find(1)
        authorize @listing
    end 

    def update 
        @listing = Listing.find(1)

        if @listing.update(listing_params)
            redirect_to @listing
        else 
            render :edit 
        end 
        authorize @listing
    end 

    private 
    def listing_params
        params.require(:listing).permit(product_ids: [])
    end 
end
