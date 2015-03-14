class UsersController < ApplicationController
	def new
		@user = User.create
	end

	def create
		@user = User.new(user_params)
 		if @user.save
			redirect_to('days_path')
		else
			redirect_to('signup')
		end
	end

	private

	def user_params
		params.require(:user).permit(:name, :email, :password)
	end
end
