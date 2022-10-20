class CreateProductReturns < ActiveRecord::Migration[6.1]
  def change
    create_table :product_returns do |t|
      t.belongs_to :product, foreign_key: true 
      t.belongs_to :return, foreign_key: true 
      
      t.timestamps
    end
  end
end
