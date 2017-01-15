class TagsController < ApplicationController

  def create
    picture = Picture.find(params[:picture_id])
    picture.tags.create(params_tag)
    redirect_to pictures_path
  end

  def destroy
    tag = Tag.find(params[:id])
    picture = tag.picture
    tag.destroy
    render json: {new_tags: picture.tags}
  end

  def params_tag
    params.require(:tag).permit(:description)
  end
end
