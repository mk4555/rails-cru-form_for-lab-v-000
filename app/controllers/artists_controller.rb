class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    set_artist
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(params)

    redirect_to artist_path(@artist)
  end

  def edit
    set_artist
    @artist.update(name: params[:name], bio: params[:bio])
  end

  def update
  end

  def destroy
  end

  private

  def set_artist
    @artist = Artist.find(params[:id])
  end
end
