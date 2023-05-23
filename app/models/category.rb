class Category < ApplicationRecord
  has_many :category_products
  has_many :products, through: :category_products

  # BONUS: In your Category model,
  # make a products method that
  # returns all the products associated with that category.
  # (You’ll need to loop through all the category_products and find the associated products…)

  # def products
  #   Category.map do |category|
  #     category.product
  #   end
  # end
end
