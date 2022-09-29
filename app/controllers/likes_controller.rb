class LikesController < ApplicationController
  def create
    @post = Post.find_by(id: params[:post_id])
    # @like = @product.likes.find(params[:id])
    # if already_liked?
    #   flash[:notice] = 'Already liked'
    # else
      new_like = @post.likes.new
      new_like.user = current_user
      new_like.save
    # end
    # private

    # def already_liked?
    #   Like.where
    # end
  end
end
