module V1
  class UsersController < ApiController
    before_action :find_user, only: [:show, :update, :destroy]

    def index
      users = User.all
      render json: users
    end

    def show
      user = User.find(params[:id])
      render json: user
    end

    def create
      user = User.new(user_params)
      user.save! if user.valid?
      render json: user ? user : { message: "Invalid user" }
    end

    def update
      @user.update(event_params)
      render json: @user
    end

    def destroy
      @user.destroy
      render json: { message: "User was deleted" }
    end

    protected

    def user_params
      params.permit(:admin, :avatar_url, :email, :first_name, :last_name)
    end

    def find_user
      @user ||= User.find(params[:id])
    end
  end
end
