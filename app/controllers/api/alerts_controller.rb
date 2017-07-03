class Api::AlertsController < ApplicationController
  def index
    @alert = Alert.order(:created_at)
    render json: @alert
  end

  def create
    if (alert_params[:message])
      @newAlert = Alert.create(alert_params)
    end
    id = alert_params[:user_id]
    @alerts = Alert.where("user_id = ?",id)
    render json: @alerts
  end

  def show
  end

  def destroy
    Alert.destroy(alert_params[:id])
    id = alert_params[:user_id]
    @alerts = Alert.where("user_id = ?",id)
    render json: @alerts
  end

  def update
  end

  private
    def alert_params
      params.require(:alert).permit(:id,:message,:priority,:date,:user_id)
    end
end
