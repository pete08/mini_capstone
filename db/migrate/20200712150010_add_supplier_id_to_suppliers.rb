class AddSupplierIdToSuppliers < ActiveRecord::Migration[6.0]
  def change
    #Not to Supplier as name of change file suggests
    #ADDed supplier_id to the products model
    add_column :products, :supplier_id, :integer
  end
end
