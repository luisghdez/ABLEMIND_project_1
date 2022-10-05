class PostsController < ApplicationController
  def new
    @newpost = Post.new
    @categories = Category.all.sort_by(&:name)
  end

  def create
    mymaq = Maquila.find_by(user_id: current_user.id)
    mysup = Supplier.find_by(user_id: current_user.id)
    if mymaq != nil
      company = mymaq
    elsif mysup != nil
      company = mysup
    end
    @newpost = Post.new(posts_params)
    @newpost.posteable = company
    if @newpost.save
      params[:post][:photo]['image'].each do |img|
      @photo = @newpost.photos.create!(:image => img)
      end
      if company.instance_of?(Maquila)
        redirect_to maquiladashboard_path
      elsif company.instance_of?(Supplier)
        redirect_to supplierdashboard_path
      end
    else
      render :new
    end
  end

  private

  def posts_params
    params.require(:post).permit(:name, photo_attributes: [:image])
  end
end
