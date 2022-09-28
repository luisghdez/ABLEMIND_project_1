class RemoveIsSupplierFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :is_supplier, :string
  end
end
