class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.belongs_to :purchase
      t.string :name 
      t.decimal :price
      t.text :description

      t.timestamps
    end
  end
end
