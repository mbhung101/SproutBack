class Api::CurrentuserController < ApplicationController
  def create
    @user = User.find_by(username: user_params[:username])
    render json:@user
  end

  private
    def user_params
      params.require(:user).permit(:username,:password)
    end
end
