class RemoveProductFromLikes < ActiveRecord::Migration[6.1]
  def change
    add_reference :likes, :post, foreign_key: true
  end
end
