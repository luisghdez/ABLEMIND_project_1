class AddFavoriteableToFavoriteCompany < ActiveRecord::Migration[6.1]
  def change
    add_reference :favorite_companies, :favoriteable, polymorphic: true, null: false
  end
end
