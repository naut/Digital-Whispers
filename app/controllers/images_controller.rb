class ImagesController < ApplicationController
  
  
  
  

  def index
    @images = Image.all
    @lastentry = Entry.find(:last)
    
    if logged_in?
      @user_entries = Entry.find(:all, :conditions => ['owner_id=?',current_user.id])
      @user_submissions = Array.new
      for entry in @user_entries
        for image in entry.images
          @user_submissions << image.id.to_s+","
        end
      end
    end
    
  
    
  end
  
  def show
    @image = Image.find(params[:id])
    
    
  end
  
  def new
    @images = Image.all
    @image = Image.new
  end
  
  def timeline
    respond_to do |format|
        format.rss {
          @entries = Entry.find(:all, :order => "created_at ASC")
          @images = Image.find(:all)
          render 'timeline', :layout => "simple" 
        }
    end
  end
  
  def showdetails
    @images = Image.all
    @image = Image.find(params[:id])
    respond_to do |format| 
      format.js 
    end
  end
  
  def queue
    respond_to do |format|
        format.rss {
          @entry = Entry.find(:last)

          @last_image = Image.find(:last)
          @image_queue = Array.new

          @entries = Entry.find(:all, :order => "created_at DESC").each do |e|
            if e.owner_id == 0
              if e.images.size == 1
                @image_queue << e
              end
            else
              if e.images.size <= 3 && e.images.size != 0
                @image_queue << e
              end
            end
          end
          
          if @image_queue.size == 0
            @image_queue << @last_image.entry
          end
          
        }
    end

  end
  
  def queue_html
        
    @entry = Entry.find(:last)

    @last_image = Image.find(:last)
    @image_queue = Array.new

    @entries = Entry.find(:all, :order => "created_at DESC").each do |e|
      if e.owner_id == 0
        if e.images.size == 1
          @image_queue << e
        end
      else
        if e.images.size <= 3 && e.images.size != 0
          @image_queue << e
        end
      end
    end
    
    if @image_queue.size == 0
      @image_queue << @last_image.entry
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
      flash[:notice] = "Successfully created image. Thank you for your contribution."
      redirect_to "/timeline#id="+@image.id.to_s
    else
      render :action => 'new'
    end
  end
  
  def createfromflash
    @entry = Entry.new
    @image = @entry.images.new(:image => params[:Filedata])
    
    if logged_in?
      @entry.owner_id = current_user.id
    else
      @entry.owner_id = 0
    end
    
    @entry.save
    @image.entry_id = @entry.id
    
    if @image.save
      flash[:notice] = "Successfully created image."
      redirect_to "/timeline#id="+@image.id.to_s
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