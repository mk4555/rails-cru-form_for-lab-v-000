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
    @genre = Genre.find(parmas[:id])
  end
end
