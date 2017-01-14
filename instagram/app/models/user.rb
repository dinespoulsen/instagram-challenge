class User < ApplicationRecord
  has_many :pictures, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :commented_pictures, through: :comments, source: :picture
  has_many :liked_pictures, through: :likes, source: :picture


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

  def has_commented?(picture)
    commented_pictures.include? picture
  end

  def has_liked?(picture)
    liked_pictures.include? picture
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    user.email = auth.info.email
    user.password = Devise.friendly_token[0,20]
    end
  end
end
