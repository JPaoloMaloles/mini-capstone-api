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
      #@carted_product = CartedProduct.where(user_id: current_user, status: "carted")
      @carted_products = current_user.carted_products.where(status: "carted")
      subtotal = 0
      tax = 0
      total = 0
      @carted_products.each do |carted_products|
        quantity = carted_products.quantity
        carted_products.update(status: "purchased")
        product = Product.find_by(id: carted_products.product_id)
        subtotal = subtotal + product.price * quantity
        tax = tax + product.tax * quantity
        total = total + product.total * quantity
        puts "product: #{product.name}, subtotal: #{product.price}, tax: #{product.tax}, total: #{product.total}"
      end
      @order = Order.create(
        user_id: current_user.id,
        subtotal: subtotal,
        tax: tax,
        total: total,
      )
      @carted_products.update(status: "purchased", order_id: @order.id)
      render :show
    else
      render json: [], status: :unauthorized
    end
  end
end
