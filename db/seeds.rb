####TRY AGAIN########
# products = Product.where(supplier_id: nil)

# products.each do |product|
#   supplier_id = Supplier.all.sample.id
#   product.update!(supplier_id: supplier_id)
# end
#####^^^^^^^^^^#####




# images = Image.where(product_id = nil)

# images.each do |image|
#   product_id = Product.all.sample.id
#   image.product_id = product_id
#   image.save!
# end