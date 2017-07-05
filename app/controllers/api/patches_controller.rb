class Api::PatchesController < ApplicationController
  def index
    @patches = Patch.all()
    render json: @patches
  end

  def create
    if patch_params[:plant]
      @patch = Patch.create(patch_params)
    end
    id = patch_params[:user_id]
    @patches = Patch.where("user_id = ?",id)
    render json: @patches
  end


  private
    def patch_params
      params.require(:patch).permit(:plant,:number,:fertilzer,:spacing,:planted_on,:age,:water,:notes,:sunlight,:total_yield,:substrate,:seed_depth,:garden_id,:user_id)
    end
end
