class CommentsController < ApplicationController
before_action :authenticate_user!, :except => [:index, :show]

  def create
    picture = Picture.find(params[:picture_id])
    comment = picture.build_with_user(params_comment, current_user)
    p comment
    if comment.save
      flash[:notice] = "comment made"
      redirect_to pictures_path
    else
      flash[:notice] = "Already made a comment"
      redirect_to pictures_path
    end
  end

  def params_comment
    params.require(:comment).permit(:thoughts)
  end

end
