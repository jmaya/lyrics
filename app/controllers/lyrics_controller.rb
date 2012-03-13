class LyricsController < ApplicationController
  def index
    @songs = []

  end

  def search
    q = params[:q]
    @songs = Song.where("title like ?","%#{q}%")
    render :index
  end
end
