class OrdersController < ApplicationController
  def show
    @order = Order.find_by(id: params["id"])
    render :show
  end

  def index
    @orders = Order.all
    render :index
  end

  def create
    @order = Order.create(
      quantity: params["quantity"],
      subtotal: params["subtotal"],
      tax: params["tax"],
      total: params["total"],
      product_id: 1,
      user_id: current_user.id,
    )
    render :show
  end
end
