class ProfileController < SiteController
  before_action :set_profile, only: [:show]


  def show
    @posts = Post.where(user_id: params[:id])
  end

  private

  def set_profile
    @user = User.find(params[:id])
  end

end
