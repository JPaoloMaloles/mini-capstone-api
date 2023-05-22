class OrdersController < ApplicationController
  def show
    @order = Order.find_by(id: params["id"])
    if current_user
      render :show
    else
      render json: { message: "Invalid User" }
    end
  end

  def index
    @orders = Order.all
    if current_user
      render :index
    else
      render json: { message: "Invalid User" }
    end
  end

  def create
    @product = Product.find_by(id: params["product_id"])
    # puts "THIS IS THE product: #{pro}"
    @order = Order.create(
      user_id: current_user.id,
      product_id: params["product_id"],
      quantity: params["quantity"],
      subtotal: @product.price * params["quantity"].to_i,
      tax: @product.tax * params["quantity"].to_i,
      total: @product.total * params["quantity"].to_i,
    )
    render :show
  end
end
