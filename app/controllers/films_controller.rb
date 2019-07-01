class FilmsController < ApplicationController
  def index
      @films = Film.all
  end

  def new
      @film = Film.new
      @film.title = params[:film][:title]
      @film.year = params[:film][:year]
    
     if @film.save
        redirect_to films_index_path
     end
  end
end

