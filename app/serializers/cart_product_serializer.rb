class CartProductSerializer < ActiveModel::Serializer
  attributes :id, :cart_id, :product_id, :product, :user_id


  def product
    {
      id: self.object.product.id,
      name: self.object.product.name,
      product_type: self.object.product.product_type,
      category: self.object.product.category,
      size: self.object.product.size,
      description: self.object.product.description,
      img_url: self.object.product.img_url,
      price: self.object.product.price,
    }
  end

end
