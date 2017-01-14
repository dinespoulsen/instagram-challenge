class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
    @comment = Comment.new
  end

  def new
    @picture = Picture.new
  end

  def create
    Picture.create(picture_params)
    redirect_to pictures_path
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def update
    picture = Picture.find(params[:id])
    picture.update(picture_params)
    redirect_to pictures_path
  end

  def destroy
    picture = Picture.find(params[:id])
    picture.destroy
    redirect_to pictures_path
  end

  def picture_params
    params.require(:picture).permit(:title, :description, :image)
  end

end
