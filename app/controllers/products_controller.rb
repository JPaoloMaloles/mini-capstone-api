class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def show
    puts "--------- User: ------------"
    pp current_user
    @product = Product.find_by(id: params["id"])
    render :show
  end

  def index
    if params["category"]
      @category = Category.find_by(name: params["category"])
      @products = category.products
    else
      @products = Product.all
    end
    render :index
  end

  def create
    @product = Product.create(
      name: params["name"],
      price: params["price"],
      #image_url: params["image_url"],
      description: params["description"],
      inventory: params["inventory"],
      supplier_id: params["supplier_id"],
    )

    if @product.valid?
      render :show
    else
      render json: { errors: @product.errors.full_messages }, status: 422
    end
  end

  def update
    @product = Product.find_by(id: params["id"])
    @product.update(
      name: params["name"] || @product.name,
      price: params["price"] || @product.price,
      #image_url: params["image_url"] || @product.image_url,
      description: params["description"] || @product.description,
      inventory: params["inventory"] || @product.inventory,
      supplier_id: params["supplier_id"] || @product.supplier_id,
    )

    if @product.valid?
      render :show
    else
      render json: { errors: @product.errors.full_messages }, status: 422
    end
  end

  def destroy
    product = Product.find_by(id: params["id"])
    product.destroy
    render json: { message: "Product successfully deleted" }
  end
end
