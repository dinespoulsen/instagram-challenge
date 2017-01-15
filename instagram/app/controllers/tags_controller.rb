class TagsController < ApplicationController

  def create
    picture = Picture.find(params[:picture_id])
    picture.tags.create(params_tag)
    redirect_to pictures_path
  end

  def destroy
    tag = Tag.find(params[:id])
    tag.destroy
    redirect_to pictures_path
  end

  def params_tag
    params.require(:tag).permit(:description)
  end
end
