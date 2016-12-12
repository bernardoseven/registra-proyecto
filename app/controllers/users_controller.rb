class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @a_proyects = @user.a_proyects.distinct
    @proyects = @user.proyects.distinct
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      redirect_to @user
    else
      render 'new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :role,
      :password, :password_confirmation)
  end

end
