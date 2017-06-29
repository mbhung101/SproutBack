class Patch < ApplicationRecord
  belongs_to :garden
  belongs_to :user
  has_many :images
  has_many :yields
end
