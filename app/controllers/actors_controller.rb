class ActorsController < ApplicationController

def choose_actor
  number = params[:id_number].to_i
  actor = Actor.find_by(id: number)
  render json: actor.as_json
end

end
