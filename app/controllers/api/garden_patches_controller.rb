class Api::GardenPatchesController < ApplicationController
  def create
    @gardens = Patch.where(user_id: garden_params[:user_id], garden_id: garden_params[:garden_id])
    render json: @gardens
  end

  private
    def garden_params
      params.require(:patch).permit(:user_id,:garden_id)
    end

end
