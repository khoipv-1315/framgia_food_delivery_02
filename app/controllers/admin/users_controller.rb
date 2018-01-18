class Admin::UsersController < Admin::BaseController

  def index
    @users = User.page params[:page]
  end

  def new
    @user = User.new
  end

  def create; end

  def edit; end

  def update; end

  def destroy
    user = User.find params[:id]
    if user.destroy
      flash[:success] = t "admin.users.user_controller.success"
    else
      flash[:warning] = t "admin.users.user_controller.failed"
    end
    redirect_to admin_users_path
  end
end
