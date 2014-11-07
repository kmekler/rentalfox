class UsersController < ApplicationController
	skip_before_filter :authorize 
	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		u = User.new(user_params)
		if u.save
			session[:user_id] = u.id.to_s
			redirect_to reviews_path
		else
			redirect_to new_user_path
		end
	end

	def edit
		@user = User.where(id:params[:id]).first
	end

	def update
		u = User.where(id:params[:id]).first
		if u.update(user_params)
			redirect_to reviews_path
		else
			redirect_to edit_user_path(u)
		end
	end

	def destroy
		u = User.where(id:params[:id]).first
		reset_session if current_user.id = u.id
		u.destroy
		redirect_to new_user_path
	end

private
	def user_params
		params.require(:user).permit(:email, :password, :password_confirmation)
	end
end
