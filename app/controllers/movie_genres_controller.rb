class MovieGenresController < ApplicationController

  def create
    movie_genres1 = MovieGenre.new(
      genre_id: params[:genre_id],
      movie_id: params[:movie_id]
    )
    if movie_genres1.save
      render json:movie_genres1
    else
      render json: {errors: movies_genres1.errors.full_messages}, status: :unprocessable_entity
    end
  end

end
