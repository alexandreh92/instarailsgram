class PostsController < SiteController
  before_action :set_post, only: %w[show edit update destroy]

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(post_params)
    respond_to do |format|
      if @post.save
        format.html { redirect_to feed_path, notice: 'Created' }
      else
        format.html { render 'new' }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to feed_path, notice: "Updated" }
      else
        format.html { render 'edit' }
      end
    end
  end

  def show
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_path }
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:description)
  end

end
