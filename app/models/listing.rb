class Listing < ApplicationRecord
    has_many :listing_products, dependent: :destroy 
    has_many :products, through: :listing_products, dependent: :destroy 
end
