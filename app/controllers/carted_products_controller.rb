class CartedProductsController < ApplicationController
  def show
    @carted_product = CartedProduct.find_by(id: params["id"])
    render :show
  end

  def index
    @carted_products = CartedProduct.where(user_id: current_user, status: "carted")
    render :index
  end

  def create
    @carted_product = CartedProduct.create(
      user_id: current_user.id,
      product_id: params["product_id"],
      quantity: params["quantity"],
      status: "carted",
      order_id: nil,
    )
    render :show
  end

  def destroy
    carted_product = CartedProduct.find_by(id: params["id"])
    carted_product.update(status: "removed")
    render json: { message: "carted_product was removed from shopping cart" }
  end
end
