class PageController < ApplicationController
  
  def timeline
    @images = Image.all
    @image = Image.new
  end
  
end