class PatchSerializer < ActiveModel::Serializer
  attributes :id, :plant, :number, :fertilizer, :spacing, :planted_on, :water, :notes, :sunlight, :total_yield, :substrate, :seed_depth, :garden, :user_id, :userName
  has_many :images
  has_many :yields

  def garden
    object.garden.name
  end

  def userName
    @user = User.find(object.user_id)
    @user.username
  end
end
