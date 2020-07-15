class Api::OrdersController < ApplicationController
  def create
    
    if current_user
      product = Product.find_by(id: params[:product_id])
      price = product.price
      @subtotal = price * params[:quantity].to_i
      @tax = params[:quantity].to_i * product.tax
      @total = @subtotal + @tax

      @order = Order.new(user_id: current_user.id, product_id: params[:product_id], quantity: params[:quantity], subtotal: @subtotal, tax: @tax, total: @total)
      @order.save
      render "create.json.jb"
    else
      authenticate_user
    end
  end

  def index
    if current_user
      @orders = current_user.orders
      render "index.json.jb"
    else
      authenticate_user
    end
  end

end
