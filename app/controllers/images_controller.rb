class ImagesController < ApplicationController
  def show
    @image = Image.find_by(id: params["id"])
    render :show
  end


  def create
    @image = Image.create(
      url: params["url"],
      product_id: params["product_id"],
    )
    render :show
  end
end
