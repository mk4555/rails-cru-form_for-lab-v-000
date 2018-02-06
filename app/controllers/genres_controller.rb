class GenresController < ApplicationController
  def show
    set_genre
  end

  def new
    @genre = Genre.new
  end

  def create
  end

  def edit
  end

  def update
  end

  private

  def set_genre
    @genre = Genre.find(params[:id])
  end

  def genre_params(*args)
    params.require(:genre).permit(*args)
  end
end
