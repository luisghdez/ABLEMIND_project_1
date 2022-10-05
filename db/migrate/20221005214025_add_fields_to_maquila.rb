class AddFieldsToMaquila < ActiveRecord::Migration[6.1]
  def change
    add_column :maquilas, :contact_name, :string, null: false
    add_column :maquilas, :phone_num, :string, null: false
    add_column :maquilas, :address, :string, null: false
    add_column :maquilas, :zip_code, :string, null: false
  end
end
