class PicturesController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show]

  def index
    @pictures = Picture.all
    @comment = Comment.new
  end

  def new
    @picture = Picture.new
  end

  def create
    picture = current_user.pictures.create(picture_params)
    redirect_to pictures_path
  end

  def edit
    picture = Picture.find(params[:id])
    if current_user.id != picture.user.id
        flash[:notice] = "You do not have edit rights"
        redirect_to pictures_path
    else
      @picture = picture
    end
  end

  def show
    @picture = Picture.find(params[:id])
    @comment = Comment.new
    @tag = Tag.new
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
