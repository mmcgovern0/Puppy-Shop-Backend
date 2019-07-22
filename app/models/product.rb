class Product < ApplicationRecord
    belongs_to :store
    belongs_to :brand
end
