class Product < ApplicationRecord
    belongs_to :brand
    belongs_to :cart
end
