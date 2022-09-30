class FavoriteCompaniesController < ApplicationController
  def index
    @sup_combo = FavoriteCompany.where(user_id: current_user.id)
    @fav_company = Supplier.where(supplier_id: current_user.id)
  end

  def create
    @new_fav = FavoriteCompany.new
    @new_fav.user = current_user
    @new_fav.supplier = Supplier.find_by(id: params[:supplier_id])
    @new_fav.save
  end
end
