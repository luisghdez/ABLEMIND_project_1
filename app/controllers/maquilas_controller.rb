class MaquilasController < ApplicationController
  def new
    @newmaquila = Maquila.new
  end

  def create
    @newmaquila = Maquila.new(maquilas_params)
    @newmaquila.user = current_user
    if @newmaquila.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def maquilas_params
    params.require(:maquila).permit(:name, :contact_name, :phone_num, :address, :zip_code)
  end
end
