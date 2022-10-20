class ListingProduct < ApplicationRecord
    belongs_to :listing
    belongs_to :product
end
