Rails.application.routes.draw do
  root "movies#index"

  # Routes for the Movie resource:

  # CREATE
  post "/movies" => "movies#create" 
  get "/movies/new" => "movies#new" 
          
  # READ
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show", as: :details
  
  # UPDATE
  patch "/movies/:id" => "movies#update"
  get "/movies/:id/edit" => "movies#edit"
  
  # DELETE
  delete "/movies/:id" => "movies#destroy"
  #------------------------------
end
