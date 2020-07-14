class Api::ProductsController < ApplicationController

  def index
    p "*" * 100
    p current_user
    p "*" * 100

    if current_user
      @products = Product.all
    else
      @products = []
    end
    
    render "index.json.jb"
  
  
  end

  def create
    @product = Product.new( 
      name: params[:name], 
      description: params[:description], 
      price: params[:price]
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
