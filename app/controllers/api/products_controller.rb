class Api::ProductsController < ApplicationController

  def productsdisplay
    @products = Product.all
    render "display.json.jb"
  end

end
