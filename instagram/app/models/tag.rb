class Tag < ApplicationRecord
  has_many :taggings
  has_many :taggings, dependent: :destroy
  has_many :pictures, through: :taggings, source: :picture
end
