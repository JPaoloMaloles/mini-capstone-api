class ProductsController < ApplicationController
  def show
    @product = Product.find_by(id: params["id"])
    render :show
  end

  def index
    @products = Product.all
    render :index
  end

  def create
    @product = Product.create(
      name: "created_name",
      price: "created_price",
      image_url: "created_image_url",
      description: "created_description",
    )
    render :show
  end
end
