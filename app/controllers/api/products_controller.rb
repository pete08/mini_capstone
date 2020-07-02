class Api::ProductsController < ApplicationController

  def productsdisplay
    @products = Product.all
    render "display.json.jb"
  end

  def productdisplay
    @product = Product.find_by(name:"Wingspan")
    render "displayproduct.json.jb"
  end

  def firstproductdisplay
    @product = Product.first
    render "firstproduct.json.jb"
  end

  def displaysegment
    hi = params['name']
    @product = Product.find_by(name:hi)
    render "product_segment.json.jb"
    # @product = Product.find_by(name:"monopoly")

  end
end
