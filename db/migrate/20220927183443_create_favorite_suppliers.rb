class CreateFavoriteSuppliers < ActiveRecord::Migration[6.1]
  def change
    create_table :favorite_suppliers do |t|
      t.references :user, null: false, foreign_key: true
      t.references :supplier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
