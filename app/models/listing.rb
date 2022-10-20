class Listing < ApplicationRecord
    has_many :listing_products, dependent: :destory 
    has_many :products, through: :listing_products, dependent: :destory 
end
