class RegistersController < ApplicationController
	def new
	end

	def create
	  @register = current_user.registers.build(registers_params)
	  if @register.save
		redirect_to current_user
	  else
		redirect_to root_path
	  end
	end


	private
	def registers_params
		params.require(:register).permit(:user_id, :proyect_id)
	end

end
