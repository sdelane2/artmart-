class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            redirect_to user_path(@user)
        else
            flash[:user_errors] = @user.errors.full_messages
            redirect_to new_user_path
        end
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update
        redirect_to user_path(@user)
    end

    private

        def user_params
            params.require(:user).permit(:first_name, :last_name, :email, :vip_status)
        end

end