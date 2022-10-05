class AddFieldsToSupplier < ActiveRecord::Migration[6.1]
  def change
    add_column :suppliers, :contact_name, :string, null: false
    add_column :suppliers, :description, :string, null: false
    add_column :suppliers, :year_start, :string, null: false
    add_column :suppliers, :phone_num, :string, null: false
    add_column :suppliers, :address, :string, null: false
    add_column :suppliers, :zip_code, :string, null: false
    add_reference :suppliers, :category, foreign_key: true
  end
end
