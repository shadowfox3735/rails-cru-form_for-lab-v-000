class SongsController < ApplicationController
  def index
    @songs = Song.all
  end
    
  def new
    @song = Song.new
  end

  def create
    @song.new(song_params(:name))
    @song.save
    redirect_to song_path(@song)
  end

  def edit
  end

  def update
    @song = Song.find(params[:id])
    @song = Song.update(song_params(:name))
    redirect_to song_path(@song)
  end

  def show
    @song = Song.find(params[:id])
  end
  
  private
  
  def song_params(*args)
    params.require(:song).permit(*args)
  end
end
