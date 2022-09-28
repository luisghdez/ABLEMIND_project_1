class AddPosteableToPosts < ActiveRecord::Migration[6.1]
  def change
    add_reference :posts, :posteable, polymorphic: true, null: false
  end
end
