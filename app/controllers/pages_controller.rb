class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @suppliers = Supplier.first(8)
    @categories = Category.all.sort_by(&:name)
  end

  def maquila_dashboard
    @mymaq = Maquila.find_by(user_id: current_user.id)
    @anuncios = @mymaq.posts
  end

  def supplier_dashboard
    @mysup = Supplier.find_by(user_id: current_user.id)
    @productos = @mysup.posts
  end
end
