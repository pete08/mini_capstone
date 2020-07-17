class Api::ProductsController < ApplicationController
  # before_action :authenticate_admin, only:[:create, :update]

  # def index
  #   p "*" * 100
  #   p current_user
  #   p "*" * 100

  #   if current_user
  #     @products = Product.all
  #     render "index.json.jb"
  #   else
  #     authenticate_user
  #   end 
  # end

  def index
    category = Category.find_by(name: params[:category])
    category.products
    if params[:category]
      @products = category.products
    else
      @products = Product.all
    end
    render "index.json.jb"
  end



  def create
    @product = Product.new( 
      name: params[:name], 
      description: params[:description], 
      price: params[:price],
      inventory: params[:inventory],
      supplier_id: params[:supplier_id]
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
    p "x" * 90
    p "@product"
    p @product
    @product.name = params[:name] || @product.name
    p "@product.name"
    p @product.name
    
    @product.price = params[:price] || @product.price
    p "@product.price"
    p @product.price
    
    @product.description = params[:description] || @product.description
    p "@product.description"
    p @product.description
    
    @product.save
    p "@product"
    p @product
    p "x" * 90
    render "update.json.jb"
  end

  def destroy
    @product = Product.last
    @product.destroy
    render "destroy.json.jb"
  end

end
