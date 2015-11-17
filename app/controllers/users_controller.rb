class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      @info = "Gracias por suscribirte, te mantendremos informado!"
    else
      @info = "Hubo un error al intentar subscribirte, intentalo de nuevo por favor"
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :subscriber_type)
  end

end
