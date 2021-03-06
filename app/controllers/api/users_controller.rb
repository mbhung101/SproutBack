class Api::UsersController < ApplicationController
  def index
    @user = User.order(:created_at)
    render json: @user
  end

  def create
    @user = User.create(user_params)
    render json: @user
  end

  def show
    @user = User.find_by(id: params[:id])
    render json:@user
  end

  def destroy
  end

  def update
    @user = User.find_by(id: user_params[:id])
    @user.update(user_params)
    render json:@user
  end

  private
    def user_params
      params.require(:user).permit(:id,:fname,:lname,:age,:city,:state,:username,:bio,:profilepic,:password)
    end
end
