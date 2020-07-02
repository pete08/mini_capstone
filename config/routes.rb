Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/products" => "products#productsdisplay"
    get "/product" => "products#productdisplay"
    get "/first_product" => "products#firstproductdisplay"
    get "/url_segment_product/:name" => "products#displaysegment"
  end

end
