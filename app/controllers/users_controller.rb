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

	def edit
		@user = User.find(params[:id])
	end

	def create
		@user = User.new(user_params)

		if @user.save
			redirect_to @user, :flash => { :success => 'User was successfully created.' }
		else
			render :action => 'new'
		end
	end

	def update
		@user = User.find(params[:id])

		if @user.update_attributes(user_params)
			sign_in(@user, :bypass => true) if @user == current_user
			redirect_to @user, :flash => { :success => 'User was successfully updated.' }
		else
			render :action => 'edit'
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to users_path, :flash => { :success => 'User was successfully deleted.' }
	end

	def user_params
      params.require(:user).permit(:first_name, :last_name, :role, :email, :user_name, :password)
    end
end
