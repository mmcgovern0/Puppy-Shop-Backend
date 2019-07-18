class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :first_name, :last_name, :phone, :address, :city, :state, :zip 
end
