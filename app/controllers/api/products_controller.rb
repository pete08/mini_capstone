class Api::ProductsController < ApplicationController

  def index
    #1. Change the index action to allow for searching by name (using params “search”).
    # @products = Product.where("name LIKE ?", "%#{params[:search]}%")
    #2. - Change the index action to allow the user to display all products under $2.00 or some other price of your choosing (using params “discount” equal to “true”).
    # discount = 20
    # if params[:discount]
    #   @products = Product.where("price < #{discount}")
    # else
    #   @products = Product.all
    # end

    
    # @products = Product.all
    render "index.json.jb"
  end

  def create
    @product = Product.new( 
      name: params[:name], 
      description: params[:description], 
      price: params[:price], 
      image_url: params[:image_url]
    )
    if @product.save
      render "show.json.jb"
    else
      render "error.json.jb"
    end
    
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
