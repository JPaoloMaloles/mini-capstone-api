class ProductsController < ApplicationController
  def showany
    @product = Product.find_by(id: params["id"])
    render template: "products/show"
  end

  def showall
    @products = Product.all
    render template: "products/index"
  end
end
