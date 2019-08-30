class ProfileController < SiteController
  before_action :set_profile, only: %w[show]

  def show
    @posts = Post.where(user_id: params[:id])
  end

  private

  def set_profile
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:name, :username, :email, :description, :password, :password_confirmation, :avatar)
  end
  
end
