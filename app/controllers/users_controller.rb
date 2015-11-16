class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    @user.save
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :subscriber_type)
  end

end
