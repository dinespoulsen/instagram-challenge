class TagsController < ApplicationController

  def create
    picture = Picture.find(params[:picture_id])
    tag = Tag.where(description: params[:tag][:description])
    p tag
    if tag.any?
      tagging = Tagging.new
      tagging.picture = picture
      tagging.tag = tag.first
      tagging.save
      redirect_to pictures_path
    else
      tag = Tag.create(params_tag)
      tagging = Tagging.new
      tagging.picture = picture
      tagging.tag = tag
      tagging.save
      redirect_to pictures_path
    end
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
