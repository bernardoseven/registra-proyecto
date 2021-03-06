class ProyectsController < ApplicationController
  
  def index
  	@proyects = Proyect.all
    # Retrieve all the proyects where the current_user is registered
  end

  def show
    @proyect = Proyect.find(params[:id])
  end

  def new
  	@proyect = Proyect.new
  end

  def create
  	@user = User.find(params[:user_id])
    @a_proyect = @user.a_proyects.create(proyect_params)
    redirect_to user_path(@user)
  end


  private
  def proyect_params
  	params.require(:proyect).permit(:name, :desc)
  end

end
