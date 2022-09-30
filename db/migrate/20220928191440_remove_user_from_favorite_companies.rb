class RemoveUserFromFavoriteCompanies < ActiveRecord::Migration[6.1]
  def change
    remove_reference :favorite_companies, :user, foreign_key: true, index: false
    add_reference :favorite_companies, :maquila, foreign_key: true
  end
end
