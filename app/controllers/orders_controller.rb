class OrdersController < ApplicationController
  def show
    @order = Order.find_by(id: params["id"])
    if current_user
      render :show
    else
      render json: [], status: :unauthorized
    end
  end

  def index
    @orders = Order.all
    if current_user
      render :index
    else
      render json: [], status: :unauthorized
    end
  end

  def create
    if current_user
      @product = Product.find_by(id: params["product_id"])
      quantity = params["quantity"].to_i
      # puts "THIS IS THE product: #{pro}"
      @order = Order.create(
        user_id: current_user.id,
        product_id: params["product_id"],
        quantity: params["quantity"],
        subtotal: @product.price * quantity,
        tax: @product.tax * quantity,
        total: @product.total * quantity,
      )
      render :show
    else
      render json: [], status: :unauthorized
    end
  end
end
