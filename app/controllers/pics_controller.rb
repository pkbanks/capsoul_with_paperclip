class PicsController < ApplicationController
  before_action :set_pic, only: [:show, :download]
 
  def index
    @pics = Pic.order('created_at DESC')
  end
 
  def new
    @pic = Pic.new
  end
 
  def show
  end
 
  def create
    @pic = Pic.new(pic_params)
    if @pic.save
      redirect_to pics_path
    else
      render :new
    end
  end
 
  private
 
  def pic_params
    params.require(:pic).permit(:title, :description, :image)
  end
 
  def set_pic
    @pic = Pic.find(params[:id])
  end
end