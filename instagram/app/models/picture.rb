class Picture < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings, source: :tag
  belongs_to :user
  has_attached_file :image, :styles => { :large => "600x600>", :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/missing.jpeg"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  def build_with_user(attributes = {}, user)
    attributes[:user] ||= user
    comments.build(attributes)
  end


end
