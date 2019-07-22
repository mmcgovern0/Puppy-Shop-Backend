class PetSerializer
  attributes :name, :species, :breed, :age, :weight
  belongs_to :user
end
