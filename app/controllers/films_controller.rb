class FilmsController < ApplicationController
  def index
      @films = Film.all
  end

  def new
    @film = Film.new
  end

  def create
    film = Film.new
    film.title = params[:film][:title]
    film.year = params[:film][:year]

    if film.save
      redirect_to films_path
    else
      redirect_to films_path
    end
  end
end

