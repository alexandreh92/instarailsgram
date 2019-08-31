class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:comment][:post_id])
    @comment = @post.comments.create(comment_params)
    @comment.user_id = current_user.id

    respond_to do |format|
      if @comment.save
        format.js { render 'feed/index' }
      else
        flash.now[:danger] = "error"
      end
    end
  end

  private 

  def comment_params
    params.require(:comment).permit(:post_id, :description)
  end

end
