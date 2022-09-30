class RemoveSupplierAndMaquilaFromFavoriteCompanies < ActiveRecord::Migration[6.1]
  def change
    add_reference :favorite_companies, :user, foreign_key: true
    remove_reference :favorite_companies, :supplier, foreign_key: true, index: false
    remove_reference :favorite_companies, :maquila, foreign_key: true, index: false
  end
end
