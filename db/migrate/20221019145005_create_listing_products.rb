class CreateListingProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :listing_products do |t|
      t.belongs_to :listing, foreign_key: true 
      t.belongs_to :product, foreign_key: true 

      t.timestamps
    end
  end
end
