class User < ApplicationRecord
  has_many :gardens
  has_many :patches, through: :gardens
  has_many :alerts
  has_many :seasons
end
