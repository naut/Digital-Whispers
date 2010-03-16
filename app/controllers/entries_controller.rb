class EntriesController < ApplicationController
  
  def index
    @entries = Entry.all
  end
  
  def recent
    respond_to do |format|
        format.rss {
          @entries = Entry.find(:all)
          render 'recent', :layout => "simple" 
        }
    end
  end
  
  
end
