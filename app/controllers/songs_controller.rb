class SongsController < ApplicationController
  def index
    @songs = Song.all
  end
    
  def new
    @song = Song.new
  end

  def create
    @song.new()
  end

  def edit
  end

  def update
  end

  def show
  end
end
