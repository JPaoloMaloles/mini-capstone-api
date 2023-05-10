class ProductsController < ApplicationController
  def showfirst
    @product = Product.first
    render template: "products/show"
  end

  def showall
    @products = Product.all
    render template: "products/index"
  end
end
