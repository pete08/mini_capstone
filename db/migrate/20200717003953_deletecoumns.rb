class Deletecoumns < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :category_product_id, :integer
    remove_column :categories, :category_product_id, :integer
  end
end
