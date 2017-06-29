class Garden < ApplicationRecord
  has_many :patches
  has_many :alerts
  belongs_to :user
  belongs_to :season
end
