class Purchase < ApplicationRecord
    has_many :product_purchases, dependent: :destroy 
    has_many :products, through: :product_purchases, dependent: :destroy 
end
