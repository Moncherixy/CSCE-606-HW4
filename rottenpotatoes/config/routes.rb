Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  get '/movies/find_similar_movies/:id', :to => 'movies#find_similar_movies', :as => 'find_similar_movies'

end
