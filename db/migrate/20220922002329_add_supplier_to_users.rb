class AddSupplierToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :is_supplier, :string
  end
end
