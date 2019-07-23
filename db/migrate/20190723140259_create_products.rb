class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :product_type
      t.string :category
      t.string :size
      t.string :description
      t.string :img_url
      t.integer :quantity
      t.integer :price
      t.integer :brand_id
      t.integer :cart_id
      t.integer :transaction_id

      t.timestamps
    end
  end
end
