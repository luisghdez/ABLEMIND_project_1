class SuppliersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    # if params[:query].present?
    #   sql_query = <<~SQL
    #     suppliers.company ILIKE :query
    #     OR product.name ILIKE :query
    #   SQL
    #   @suppliers = Supplier.joins(:product).where(sql_query, query: "%#{params[:query]}%")
    # else
    #   @suppliers = Supplier.all
    # end
    if params[:query].present?
      @suppliers = Supplier.where("company LIKE ?", "%#{params[:query]}%")
    else
      @suppliers = Supplier.all
    end
    @suppliers = @suppliers.page(params[:page]).per(10)
    @categories = Category.all.sort_by(&:name)
  end

  def show
    @supplier = Supplier.find(params[:id])
    @sup_products = Post.where(posteable_id: @supplier.id)
    # @image = Post.find(107).photos.first.image
  end

  def new
    @newsupplier = Supplier.new
    @categories = Category.all.sort_by(&:name)
  end

  def create
    @newsupplier = Supplier.new(suppliers_params)
    @newsupplier.user = current_user
    if @newsupplier.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def suppliers_params
    params.require(:supplier).permit(:company, :contact_name, :description, :photo, :category_id, :year_start, :phone_num, :address, :zip_code)
  end
end
