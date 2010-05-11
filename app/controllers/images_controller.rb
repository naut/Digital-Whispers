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
    @entry = Entry.new
    @image = @entry.images.new(params[:image])
    
    if logged_in?
      @entry.owner_id = current_user.id
    else
      @entry.owner_id = 0
    end
    
    @entry.save
    @image.entry_id = @entry.id
    
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
    @entry = Entry.find(@image.entry_id)
    @image = @entry.images.new(params[:image])
    
    if @image.save
      flash[:notice] = "Successfully updated image."
      redirect_to @image
    else
      render :action => 'edit'
    end
  end
end