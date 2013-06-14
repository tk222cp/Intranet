class Admin::UserController < ApplicationController
load_and_authorize_resource

	def index
		@users = User.where("id NOT IN (?)", current_user.id)
	end

	def new
		@user = User.new
		5.times { @user.assets.build }
	end

	def show
		@user = User.find(params[:id])
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			flash[:notice] = "#{ @user.email } created."
			redirect_to admin_users_path
		else
			render :action => 'new'
		end
	end

	def edit
		@user = User.find(params[:id])
		5.times { @user.assets.build }
	end

	def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to admin_user_path(@user), notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

	def delete
	end

	def destroy
		redirect_to admin_users_path and return if params[:cancel]
		if @user.destroy
			flash[:notice] = "#{ @user.email } deleted."
			redirect_to admin_users_path
		end
	end
end
