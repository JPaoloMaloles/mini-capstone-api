class CartedProduct < ApplicationRecord
  belongs_to :user
  belongs_to :product
  belongs_to :order, optional: true

  # def products
  #   return Product.where(product_id: product_id)
  # end
end
