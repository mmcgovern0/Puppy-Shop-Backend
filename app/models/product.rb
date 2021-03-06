class Product < ApplicationRecord
    # belongs_to :brand
    has_many :favorite_products
    has_many :users, through: :favorite_products
    has_many :cart_products
    has_many :products, through: :cart_products
end
