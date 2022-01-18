class MoviesController < ApplicationController

  def index
    movies1 = Movie.all
    render json: movies1
  end

  def create
    movies1 = Movie.new(
      title: params[:title],
      plot: params[:plot],
      year: params[:year]
    )
    movies1.save
    render json:movies1
  end
  
  def show
    number = params[:id].to_i
    movies1 = Movie.find(number)
    render json:movies1
  end

  def update
    number = params[:id].to_i
    movies1 = Movie.find(number)
    movies1.title = params[:title] || movies1.title
    movies1.year = params[:year] || movies1.year
    movies1.plot = params[:plot] || movies1.plot
    movies1.save
    render json:movies1
  end

  def destroy
    number = params[:id].to_i
    movies1 = Movie.find(number)
    movies1.destroy
    render json:{message: "The movie #{movies1.title} was destroyed!  Do you feel good about yourself?"}
  end

end
