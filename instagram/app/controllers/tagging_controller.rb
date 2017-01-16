class TaggingController < ApplicationController

  def destroy
    tagging = Tagging.find(params[:id])
    picture = tagging.picture
    tagging.destroy
    render json: {new_taggings: picture.taggings,
                  new_tags: picture.tags}
  end

end
