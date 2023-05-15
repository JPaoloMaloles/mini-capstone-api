class Product < ApplicationRecord
  #   Create a model method called is_discounted? that returns true if an item is less than or equal to $10 and false otherwise.
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
end
