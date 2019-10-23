class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user=User.create(check_params)
    if User.valid?
    redirect_to users_path
  else
    flash[:errors] = user.errors.full_messages
  end
end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(params.require(:user).permit(:name))
    redirect_to user_path(@user)
  end

    def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path

  end

  private

  def check_params
    params.require(:user).permit(:name, :username, :password)
  end

end
