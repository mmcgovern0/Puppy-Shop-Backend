class AddUserIdToCartProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :cart_products, :user_id, :integer
  end
end
