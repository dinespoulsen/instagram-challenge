class CommentsController < ApplicationController

  def create
    picture = Picture.find(params[:picture_id])
    picture.comments.create(params_comment)
    redirect_to pictures_path
  end

  def params_comment
    params.require(:comment).permit(:thoughts)
  end

end
