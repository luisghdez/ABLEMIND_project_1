class SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
  end

  def show
    @supplier = Supplier.find(params[:id])
    @sup_products = Product.where(supplier_id: @supplier.id)
  end
end
