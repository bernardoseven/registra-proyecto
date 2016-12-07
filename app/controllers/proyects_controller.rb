class ProyectsController < ApplicationController
  
  def index
  	@proyects = Proyect.all
  end

  def new
  	@proyect = Proyect.new
  end

  def create
  	@user = User.find(params[:user_id])
    @proyect = @user.proyects.create(proyect_params)
    redirect_to user_path(@user)
  end


  private
  def proyect_params
  	params.require(:proyect).permit(:name, :desc)
  end

end
