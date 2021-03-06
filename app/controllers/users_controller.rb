class UsersController < ApplicationController
    skip_before_action :authorization, only: [:new, :create]

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            session[:user_id] = @user.id 
            redirect_to user_path(@user)
        else
            flash[:user_errors] = @user.errors.full_messages
            redirect_to new_user_path
        end
    end

    def edit
        @user = User.find(params[:id])
        if @user.valid?
            session[:user_id] = @user.id 
            render :edit
        end
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            redirect_to user_path(@user)
        else
            flash[:user_errors] = @user.errors.full_messages
            redirect_to edit_user_path
        end
    end

    def destroy
        @user = User.find(params[:id])
            @user.destroy
            redirect_to artworks_path
    end

    private

        def user_params
            params.require(:user).permit(:first_name, :last_name, :email, :vip_status, :password)
        end

end