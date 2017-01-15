class LikesController < ApplicationController

  def create
    picture = Picture.find(params[:picture_id])
    like = picture.likes.new(user_id: current_user.id)
    like.save
    render json: {new_like_count: picture.likes.count,
                  like_id: like.id,
                  picture_id: picture.id}
  end

  def destroy
    like = Like.find(params[:id])
    picture = like.picture
    like.destroy
    render json: {new_like_count: picture.likes.count,
                  picture_id: picture.id}
  end
end
