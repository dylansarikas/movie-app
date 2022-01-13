class MoviesController < ApplicationController

  def choose_movie
    number = params[:id_number].to_i
    movie = Movie.find_by(id: number)
    render json: movie.as_json
  end

  def all_movie
    movie = Movie.all
    render json: movie.as_json
  end

end
