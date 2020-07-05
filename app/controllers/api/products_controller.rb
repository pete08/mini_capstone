class Api::ProductsController < ApplicationController

  def index
    @products = Product.all
    render "index.json.jb"
  end

  def create
    @product = Prdocut.new( 
      name: params[:name], 
      description: params[:description], 
      price: params[:price], 
      img_url: params[:img_url]
  )
    render "create.json.jb"
  end
end
