class FavoriteProductSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :product_id, :product
  # belongs_to :user
  # belongs_to :product

  # def product
  #   {
  #     id: self.object.product.id,
  #     name: self.object.product.name,
  #     product_type: self.object.product.product_type,
  #     category: self.object.product.category,
  #     size: self.object.product.size,
  #     description: self.object.product.description,
  #     img_url: self.object.product.img_url,
  #     price: self.object.product.price,
  #   }
  # end
  def product
    Product.find(self.object.product_id)
  end

end
