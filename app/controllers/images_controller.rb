class ImagesController < ApplicationController
  def show
    @image = Image.find_by(id: params["id"])
    render :show
  end

  def index
    @images = Image.all
    render :index  
  end


  def create
    @image = Image.create(
      url: params["url"],
      product_id: params["product_id"],
    )
    render :show
  end

  def update
    @image = Image.find_by(id: paramas["id"])
    @image.update(
      url: params["url"] || @image.url,
      product_id: params["product_id"] || @image.product_id,
    )
  end

  def destroy
    image = Image.find_by(id: params["id"])
    image.destroy
    render json: ( message: "Destroyed the image")
  end
end
