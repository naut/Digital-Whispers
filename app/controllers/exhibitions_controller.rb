class ExhibitionsController < ApplicationController

  def index
    @exhibitions = Exhibition.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @exhibitions }
    end
  end


  def show
    @exhibition = Exhibition.find(:first, :conditions => ['slug=?', params[:id]])
    

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

  def timeline
    respond_to do |format|
        format.rss {
          @exhibition = Exhibition.find(:first, :conditions => ['slug=?', params[:id]])
          @entries = Entry.find(:all, :order => "created_at ASC", :conditions => ['exhibition_id=?', @exhibition.id])
          @images = Image.find(:all)
        }
    end
  end

  def new
    @exhibition = Exhibition.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @exhibition }
    end
  end

  def edit
    @exhibition = Exhibition.find(params[:id])
  end

  def create
    @exhibition = Exhibition.new(params[:exhibition])

    respond_to do |format|
      if @exhibition.save
        flash[:notice] = 'Exhibition was successfully created.'
        format.html { redirect_to(@exhibition) }
        format.xml  { render :xml => @exhibition, :status => :created, :location => @exhibition }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @exhibition.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @exhibition = Exhibition.find(params[:id])

    respond_to do |format|
      if @exhibition.update_attributes(params[:exhibition])
        flash[:notice] = 'Exhibition was successfully updated.'
        format.html { redirect_to(@exhibition) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @exhibition.errors, :status => :unprocessable_entity }
      end
    end
  end


  def destroy
    @exhibition = Exhibition.find(params[:id])
    @exhibition.destroy

    respond_to do |format|
      format.html { redirect_to(exhibitions_url) }
      format.xml  { head :ok }
    end
  end
end
