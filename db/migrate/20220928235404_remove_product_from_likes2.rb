class RemoveProductFromLikes2 < ActiveRecord::Migration[6.1]
  def change
    remove_column :likes, :product_id
  end
end
