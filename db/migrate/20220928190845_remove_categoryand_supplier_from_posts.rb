class RemoveCategoryandSupplierFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_reference :posts, :category, foreign_key: true, index: false
    remove_reference :posts, :supplier, foreign_key: true, index: false
  end
end
