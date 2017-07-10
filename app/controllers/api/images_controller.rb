class Api::ImagesController < ApplicationController
  def index
    @images = Image.order(:created_at)
    render json: @images
  end
end
