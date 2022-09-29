class PostsController < ApplicationController
  def new
    @newpost = Post.new
    @categories = Category.all.sort_by(&:name)
  end

  def create
    mysup = Supplier.find_by(user_id: current_user.id)
    @newpost = Post.new(posts_params)
    @newpost.posteable = mysup
    if @newpost.save
      redirect_to supplier_path(mysup[:id])
    else
      render :new
    end
  end

  private

  def posts_params
    params.require(:post).permit(:name)
  end
end
