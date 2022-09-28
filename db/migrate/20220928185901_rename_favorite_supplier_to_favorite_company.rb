class RenameFavoriteSupplierToFavoriteCompany < ActiveRecord::Migration[6.1]
  def change
    rename_table :favorite_suppliers, :favorite_companies
  end
end
