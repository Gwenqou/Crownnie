class ImagesController < ApplicationController
before_action :set_image, only:[:update, :show, :edit, :destroy] 

  def index
    @images = Image.all
  
  end 
  
  def new
    @image = Image.new
  end 
  
  def create
    @image = Image.new(image_params)
    if @image.save
      flash[:success]="Your image has been successfully created"
      redirect_to image_path(@image)
    else
      render 'new'
    end 
  end
  

  
  def edit
  end 
  
  def update
    if @image.update(image_params)
      flash[:success]="Your image has been successfully updated"
      redirect_to image_path(@image)
    else
      render 'edit'
    end
  end
  
  def show
  end 
  
  def destroy
    @image.destroy
    flash[:danger]="Your image has been successfully deleted"
    redirect_to images_path
  end 

  private
    def image_params
      params.require(:image).permit(:imagename, :category) 
    end 
    def set_image
      @image = Image.find(params[:id])
    end 
    
  
end 
