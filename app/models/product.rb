class Product < ApplicationRecord
    has_many :listing_products, dependent: :destroy 
    has_many :listings, through: :listing_products, dependent: :destroy 
    has_many :product_purchases, dependent: :destroy 
    has_many :purchases, through: :product_purchases, dependent: :destroy 
    has_many :product_returns, dependent: :destroy 
    has_many :returns, through: :product_returns, dependent: :destroy 
end
