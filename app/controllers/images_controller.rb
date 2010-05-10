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
  
  def postupdate
    

     @image = Image.find(params[:id])
     @entry = Entry.find(@image.entry_id)

     require 'RMagick'
     require 'stringio'
     require 'tempfile'

     logger.info {params[:image]}
     img = Magick::Image.from_blob(params[:image])
     
     
     
     #img.write("#{RAILS_ROOT}/public/test.jpg")
     
     f = Tempfile.new('newimage')
     f.write(img.to_blob)
     
     @image = @entry.images.new(:image => f)

     
     if @image.save
       flash[:notice] = "Successfully updated image."
       redirect_to @image
     else
       render :action => 'edit'
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