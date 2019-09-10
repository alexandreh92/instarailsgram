class FeedController < SiteController
  def index
    @posts = Post.all.order(description: :desc).paginate(page: params[:page], per_page: 3)
    respond_to do |format|
      format.js
      format.html
    end
  end

  def new
    @post = Post.last
  end

end
