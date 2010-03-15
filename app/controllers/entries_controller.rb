class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end
end
