class Api::CurrentuserController < ApplicationController
  def create
    @user = User.find_by(username: user_params[:username])
    if (@user)
    render json:@user
    else
      raise "error"
    end
  end

  def update
  end

  private
    def user_params
      params.require(:user).permit(:username,:password)
    end
end
