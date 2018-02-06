class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = set_artist
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(name: params[:name], bio: params[:bio])
    redirect_to artist_path(@artist)
  end

  def edit
    set_artist
  end

  def update
    set_artist
    @artist.update(name: params[:name], bio: params[:bio])
    redirect_to artist_path(@artist)
  end

  def destroy
  end

  private

  def set_artist
    @artist = Artist.find(params[:id])
  end
end
