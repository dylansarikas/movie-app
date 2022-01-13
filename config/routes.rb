Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/actor_path/:id_number", controller: "actors", action: "choose_actor"
  get "/movie_path/:id_number", controller: "movies", action: "choose_movie"
  get "all_movie_path", controller: "movies", action: "all_movie"
end
