class SongsController < ApplicationController
  def index
    @songs = Song.all.includes(:store && :album).order("title").page(params[:page])
  end

  def show
    @song = Song.find(params[:id])
  end
end
