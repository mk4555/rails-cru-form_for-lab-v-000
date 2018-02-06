class ArtistsController < ApplicationController
  def index

  end

  def show
    set_artist
  end

  def new

  end

  def create
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
