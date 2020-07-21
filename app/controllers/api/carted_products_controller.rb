class Api::CartedProductsController < ApplicationController
  before_action :authenticate_user

   

  def index
    @carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
    
    p @carted_products
    render "index.json.jb"
  end

  def create
    @carted_product = CartedProduct.create!(user_id: current_user.id, product_id: params[:product_id], quantity: params[:quantity], status: "carted")
    render "show.json.jb"
  end

end
