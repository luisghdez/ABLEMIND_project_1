class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @suppliers = Supplier.all
    @categories = Category.all.sort_by(&:name)
  end
end
