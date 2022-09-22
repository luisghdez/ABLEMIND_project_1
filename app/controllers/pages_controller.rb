class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @suppliers = Supplier.first(8)
    @categories = Category.all.sort_by(&:name)
  end
end
