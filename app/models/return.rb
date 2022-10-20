class Return < ApplicationRecord
    has_many :product_returns, dependent: :destroy 
    has_many :products, through: :product_returns, dependent: :destroy 
end
