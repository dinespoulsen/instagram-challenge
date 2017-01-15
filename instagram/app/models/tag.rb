class Tag < ApplicationRecord
  validates :description, uniqueness: true
  has_many :taggings
  has_many :taggings, dependent: :destroy
  has_many :pictures, through: :taggings, source: :picture
end
