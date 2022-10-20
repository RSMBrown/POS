class ProductReturn < ApplicationRecord
    belongs_to :return
    belongs_to :product
end
