class Season < ApplicationRecord
  has_many :days
  has_many :gardens
  belongs_to :user
end
