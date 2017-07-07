class Patch < ApplicationRecord
  belongs_to :garden
  belongs_to :user
  has_many :images, dependent: :destroy
  has_many :yields, dependent: :destroy
end
