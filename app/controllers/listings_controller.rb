class ListingsController < ApplicationController

    def index 
        @listings = Listing.all
    end 

    def show 
        @listing = Listing.find(params[:id])
    end 

    def new 
        @listing = Listing.new
    end 

    def create 
        @listing = Listing.create(listing_params)

        if @listing.save 
            redirect_to @listing
        else 
            render :new 
        end 
    end 

    def edit 
        @listing = Listing.find(params[:id])
    end 

    def update 
        @listing = Listing.find(params[:id])

        if @listing.update(listing_params) 
            redirect_to @listing
        else 
            render :new 
        end 
    end 

    def destory 
        @listing = Listing.find(params[:id])
        @listing.destory

        redirect_to listings_path
    end 
end
