class FiltersController < ApplicationController

  def index
    tag = Tag.find(params[:tag])
    @pictures = tag.pictures
    @comment = Comment.new
  end
end
