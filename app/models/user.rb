class User < ApplicationRecord
    has_secure_password
    has_many :pets
    has_many :carts
    has_many :favorite_products
    has_many :products, through: :favorite_products
end
