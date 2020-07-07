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

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description
    @product.save 
    render "update.json.jb"
  end

  def destroy
    @product = Product.last
    @product.destroy
    render "destroy.json.jb"
  end

end
