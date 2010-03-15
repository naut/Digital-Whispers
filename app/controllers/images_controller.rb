class ImagesController < ApplicationController
  def index
    @images = Image.all
  end
  
  def show
    @image = Image.find(params[:id])
  end
  
  def new
    @images = Image.all
    @image = Image.new
  end
  
  def recent
    respond_to do |format|
        format.rss {
          @images = Image.find(:all)
          render 'recent', :layout => "simple" 
        }
    end
  end
  
  def create
    @image = Image.new(params[:image])
    if logged_in?
      @image.owner_id = current_user.id
    else
      @image.owner_id = 0
    end
    if @image.save
      flash[:notice] = "Successfully created image."
      redirect_to @image
    else
      render :action => 'new'
    end
  end
  
  def edit
    @image = Image.find(params[:id])
  end
  
  def update
    @image = Image.find(params[:id])
    if @image.update_attributes(params[:image])
      flash[:notice] = "Successfully updated image."
      redirect_to @image
    else
      render :action => 'edit'
    end
  end
end
