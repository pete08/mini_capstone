class Api::ProductsController < ApplicationController

  def productsdisplay
    @products = Product.all
    render "display.json.jb"
  end

  def productdisplay
    @product = Product.find_by(name:"Wingspan")
    render "displayproduct.json.jb"
  end
end
