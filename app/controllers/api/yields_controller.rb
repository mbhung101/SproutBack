class Api::YieldsController < ApplicationController
  def index
    @yield = Yield.order(:created_at)
    render json: @yield
  end

  def create
    Yield.create(newYield)
    id = yield_params[:user_id]
    @patches = Patch.where("user_id = ?",id)
    render json: @patches
  end

  private
  def yield_params
    params.require(:yield).permit(:patch_id,:weight,:harvested_on,:user_id)
  end

  def newYield
    newYield = {
      patch_id: yield_params[:patch_id],
      weight: yield_params[:weight],
      harvested_on: yield_params[:harvested_on]
    }
    return newYield
  end
end
