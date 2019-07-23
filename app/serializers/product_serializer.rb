class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :type, :category, :size, :description, :quantity, :price, :brand_id, :cart_id, :transaction_id
end
