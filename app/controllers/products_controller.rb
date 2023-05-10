class ProductsController < ApplicationController
  def showall
    @products = Product.all
    render template: "products/index"
  end
end
