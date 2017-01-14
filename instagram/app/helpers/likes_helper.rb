module LikesHelper

  def find_like_by_user_and_picture(user, picture)
    Like.where(user_id: user.id, picture_id: picture.id).first
  end
end
