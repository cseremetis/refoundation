class UsersController < ApplicationController
	#app/helpers/sessions_helper.rb
	include SessionsHelper

	def new
		current_user
		all_users
	end

	def create
		current_user
		@new_user = User.new(user_params)
		
		if @new_user.save
			all_users
			render 'new'
		else
			all_users
			render 'new'
		end
	end

	def edit
		current_user
	end

	def update
		if current_user.authenticate(params[:user][:old_password])
			current_user.update(update_user_params)
			redirect_to '/login'
		else
			flash[:notice] = 'Unable to update information. Please make sure old password is correct and all fields are filled out'
			render 'edit'
		end
	end

	def destroy
		@dead_user = User.find(params[:id])
		@dead_user.destroy
		all_users
		render 'new'
	end

	private

		def user_params
			params.require(:user).permit(:name, :email, :password, :password_confirmation)
		end

		def update_user_params
			params.require(:user).permit(:name, :email, :password)
		end

		def all_users
			@users = User.all
		end
end