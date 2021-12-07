class AlbumsController < ApplicationController
  def index
    @albums = Album.all.order("title")
  end

  def show
    @album = Album.find(params[:id])
    @songs = Song.where(album_id: @song)
  end
end
