class ActorsController < ApplicationController

  def index
    actors1 = Actor.all
    render json: actors1
  end

  def create
    actors1 = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for]
    )
    actors1.save
    render json:actors1
  end

  def show
    number = params[:id].to_i
    actors1 = Actor.find(number)
    render json:actors1
  end

  def update
    number = params[:id].to_i
    actors1 = Actor.find(number)
    actors1.last_name = params[:last_name] || actors1.last_name
    actors1.first_name = params[:first_name] || actors1.first_name
    actors1.known_for = params[:known_for] || actors1.known_for
    actors1.save
    render json:actors1
  end

  def destroy
    number = params[:id].to_i
    actors1 = Actor.find(number)
    actors1.destroy
    render json:{message: "The actor #{actors1.first_name} #{actors1.last_name} was destroyed!  Do you feel good about yourself?"}
  end

end
