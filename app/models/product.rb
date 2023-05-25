class Product < ApplicationRecord
  #   Create a model method called is_discounted? that returns true if an item is less than or equal to $10 and false otherwise.
  has_many :carted_products
  has_many :category_products
  has_many :categories, through: :category_products
  #has_many :orders
  belongs_to :supplier
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: true
  validates :price, comparison: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: { in: 10..500 }
  #validates :image_url, :with => "%r{\.(gif|jpg|png)\Z}i", :message => "must be gif, png, or jpeg", multiline: true This doesnt work rn, go back to vid to check

  def is_discounted?
    return price <= 10
  end

  # • Create a model method called tax which will return the tax that would be charged for a particular product. (Assume a 9% tax rate.)
  def tax
    return price * 0.09
  end

  # • Create a model method called total which will return the sum of the price + tax
  def total
    return price + tax()
  end

  # def supplier
  #   # Supplier.where(id: supplier_id)
  #   return Supplier.where(id: supplier_id)
  # end

  def images
    return Image.where(product_id: id)
  end
end
