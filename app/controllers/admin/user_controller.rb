class Admin::UserController < ApplicationController
load_and_authorize_resource

	def index
		@users = User.where("id NOT IN (?)", current_user.id)
	end

	def new
		@user = User.new
	end

	def show
		@user = User.find(params[:id])
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			flash[:notice] = "#{ @user.email } created."
			redirect_to users_path
		else
			render :action => 'new'
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		params[:user].delete(:password) if params[:user][:password].blank?
		params[:user].delete(:password_confirmation) if params[:user][:password].blank? and params[:user][:password_confirmation].blank?
		if @user.update_attributes(params[:user])
			flash[:notice] = "Successfully updated User."
			redirect_to users_path
		else
			render :action => 'edit'
		end
	end

	def delete
	end

	def destroy
		redirect_to users_path and return if params[:cancel]
		if @user.destroy
			flash[:notice] = "#{ @user.email } deleted."
			redirect_to users_path
		end
	end
end
