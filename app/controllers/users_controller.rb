class UsersController < ApplicationController
    before_action :find_user ,only: [:show, :edit, :update, :destroy]

    def index
        @users = User.all
    end

    def show
        # @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        @user.save

        redirect_to @user
    end

    def edit
        # @user = User.find(params[:id])
    end

    def update
        # @user = User.find(params[:id])
        @user.update(user_params)

        redirect_to @user
    end

    def destroy
        @user.destroy

        redirect_to users_path
    end

    private

    def user_params
        params.require(:user).permit(:name, :headline, :profile_picture, :current_job, :about, :skill, :location, :website, :password)
    end

    def find_user
        @user = User.find(params[:id])
    end

end
