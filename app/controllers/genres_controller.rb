class GenresController < ApplicationController
  def show
  end

  def new
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
  end
end
