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
  end

  private
    def user_params
      params.require(:user).permit(:fname,:lname,:age,:city,:state,:username,:bio,:profilepic,:password)
    end
end
