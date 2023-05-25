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
      @carted_product = CartedProduct.where(user_id: current_user, status: "carted")
      # puts "THIS IS THE product: #{pro}"
      subtotal = 0
      tax = 0
      total = 0
      @carted_product.each do |carted_product|
        quantity = carted_product.quantity
        carted_product.update(status: "purchased")
        product = Product.find_by(id: carted_product.product_id)
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
      render :show
    else
      render json: [], status: :unauthorized
    end
  end
end
