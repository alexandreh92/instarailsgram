class FeedController < SiteController
  def index
    @posts = Post.all.order(description: :desc)
    respond_to do |format|
      format.js
      format.html
    end
  end

  def new
    @post = Post.last
  end

end
