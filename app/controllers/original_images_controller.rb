class OriginalImagesController < ApplicationController
  def index
    @original_images = OriginalImage.all
  end
  
  def new
    @original_image = OriginalImage.new
  end
  
  def create
    @original_image = OriginalImage.new(params[:original_image])
    if @original_image.save
      flash[:notice] = "Successfully created original image."
      redirect_to original_images_url
    else
      render :action => 'new'
    end
  end
  
  def edit
    @original_image = OriginalImage.find(params[:id])
  end
  
  def update
    @original_image = OriginalImage.find(params[:id])
    if @original_image.update_attributes(params[:original_image])
      flash[:notice] = "Successfully updated original image."
      redirect_to original_images_url
    else
      render :action => 'edit'
    end
  end
end
