class Addcategoryproductid < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :category_product_id, :integer
    add_column :categories, :category_product_id, :integer
  end
end
