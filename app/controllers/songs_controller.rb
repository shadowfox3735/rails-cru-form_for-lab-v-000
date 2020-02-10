class SongsController < ApplicationController
  def index
    @songs = Song.all
  end
    
  def new
    @song = Song.new
  end

  def create
    @song.new(song_params(:name, :artist, :genre))
  end

  def edit
  end

  def update
  end

  def show
    @song = Song.find(params[:id])
  end
  
  private
  
  def song_params(*args)
    
  end
end
