class ProductsController < ApplicationController
  def new
    @newproduct = Product.new
    @categories = Category.all.sort_by(&:name)
  end

  def create
    mysup = Supplier.find_by(user_id: current_user.id)
    @newproduct = Product.new(products_params)
    @newproduct.supplier = mysup
    @newproduct.category = Category.find(params[:product][:category])
    if @newproduct.save
      redirect_to supplier_path(mysup[:id])
    else
      render :new
    end
  end

  private

  def products_params
    params.require(:product).permit(:name)
  end
end
