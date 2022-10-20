class Purchase < ApplicationRecord
    has_many :products, dependent: :destory 
end
