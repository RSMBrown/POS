class Product < ApplicationRecord
    belongs_to :purchase
    has_many :listing_products, dependent: :destory 
    has_many :listings, through: :listing_products, dependent: :destory 
end
