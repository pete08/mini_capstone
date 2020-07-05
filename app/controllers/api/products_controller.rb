class Api::ProductsController < ApplicationController

  def index
    @products = Product.all
    render "index.json.jb"
  end

  def create
    @product = Product.new( 
      name: params[:name], 
      description: params[:description], 
      price: params[:price], 
      img_url: params[:img_url]
  )
    @product.save
    render "create.json.jb"
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = "newgame"
    @product.price = 16
    @product.image_url = "catanboardgame.com"
    @product.description = "A game of land and resource management"
    @product.save
    render "update.json.jb"
  end
end
