class FavoriteSuppliersController < ApplicationController
  def index
    @sup_combo = FavoriteSupplier.where(user_id: current_user.id)
    @fav_suppliers = Supplier.where(supplier_id: current_user.id)
  end

  def create
    @new_fav = FavoriteSupplier.new
    @new_fav.user = current_user
    @new_fav.supplier = Supplier.find_by(id: params[:supplier_id])
    @new_fav.save
  end
end
