class CreateProductPurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :product_purchases do |t|
      t.belongs_to :product, foreign_key: true 
      t.belongs_to :purchase, foreign_key: true 

      t.timestamps
    end
  end
end
