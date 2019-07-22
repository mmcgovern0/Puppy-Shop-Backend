class UserSerializer < ActiveModel::Serializer
  attributes :first_name, :last_name, :phone, :address, :city, :state, :zip 
end
