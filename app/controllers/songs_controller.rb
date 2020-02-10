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
    @genre = Genre.find(params[:id])
    @genre = Genre.update(genre_params(:name))
    redirect_to genre_path(@genre)
  end

  def show
    @song = Song.find(params[:id])
  end
  
  private
  
  def song_params(*args)
    params.require(:song).permit(*args)
  end
end
