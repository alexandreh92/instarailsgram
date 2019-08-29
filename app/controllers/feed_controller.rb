class FeedController < SiteController
  def index
    @posts = Post.all.order(description: :desc)
  end
end
