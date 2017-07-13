class Api::GardensController < ApplicationController
  def index
    @gardens = Garden.order(:created_at)
    render json: @gardens
  end

  def create
    if (garden_params[:year])
      @newgarden = Garden.create(garden_params)
      return render json: @newgarden
    end
    id = garden_params[:user_id]
    @gardens = Garden.where("user_id = ?",id)
    return render json: @gardens
  end

  def show
  end

  def destroy
  end

  def update
  end

  private
    def garden_params
      params.require(:garden).permit(:year,:name,:user_id,:season_id)
    end
end
