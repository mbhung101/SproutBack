class Api::AlertsController < ApplicationController
  def index
    @alert = Alert.order(:created_at)
    render json: @alert
  end

  def create
    @alert = User.create(alert_params)
    render json: @alert
  end

  def show
  end

  def destroy
  end

  def update
  end

  private
    def alert_params
      params.require(:alert).permit(:message,:priority,:date,:user_id)
    end
end
