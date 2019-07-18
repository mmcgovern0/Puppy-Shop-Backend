class PetSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :species, :breed, :age, :weight
  belongs_to :user
end
