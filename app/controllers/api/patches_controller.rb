class Api::PatchesController < ApplicationController
  def index
    @patches = Patch.all()
    render json: @patches
  end

  def create
    if patch_params[:plant]
      newP = Patch.create(newPatch)
      images = makeImageArray()
      images.each do |image|
        Image.create(url:image,patch_id:newP.id)
      end
    end
    id = patch_params[:user_id]
    @patches = Patch.where("user_id = ?",id)
    render json: @patches
  end

  def update
    patch = Patch.update(newPatch)
    images = makeImageArray()
    Image.where(id: patch[0].id).destroy_all()
    images.each do |image|
      Image.create(url:image,patch_id:patch[0].id)
    end
    id = patch_params[:garden_id]
    @patch = Patch.where("garden_id = ?",id)
    render json: @patch
  end

  def destroy
    # needs user_id to be secure
    Patch.destroy(patch_params[:patch_id])
    id = patch_params[:garden_id]
    @patch = Patch.where("garden_id = ?",id)
    render json: @patch
  end

  private
    def patch_params
      params.require(:patch).permit(:plant,:number,:fertilizer,:spacing,:planted_on,:age,:water,:notes,:sunlight,:total_yield,:substrate,:seed_depth,:garden_id,:user_id,:image1,:image2,:image3,:image4,:image5,:patch_id)
    end

    def makeImageArray
      images = []
      images << patch_params[:image1]
      images << patch_params[:image2]
      images << patch_params[:image3]
      images << patch_params[:image4]
      images << patch_params[:image5]
      return images.reject { |i| i.empty? }
    end

    def newPatch
      patch = {
        plant: patch_params[:plant],
        number: patch_params[:number],
        fertilizer: patch_params[:fertilizer],
        spacing: patch_params[:spacing],
        planted_on: patch_params[:planted_on],
        water: patch_params[:water],
        sunlight: patch_params[:sunlight],
        substrate: patch_params[:substrate],
        seed_depth: patch_params[:seed_depth],
        notes: patch_params[:notes],
        user_id: patch_params[:user_id],
        garden_id: patch_params[:garden_id]
      }
      return patch
    end
end
