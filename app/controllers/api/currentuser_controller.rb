class Api::CurrentuserController < ApplicationController
  def create
    @user = User.find_or_create_by(user_params)
    render json:@user
  end

  def update
  end

  private
    def user_params
      params.require(:user).permit(:username,:password)
    end
end
