Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  namespace :api do
    get "/contacts" => "contacts#index"
    get "/contacts/:id" => "contacts#show"
    post "/contacts" => "contacts#create"
    patch "/contacts/:id" => "contacts#update"
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
  end
    get '/recipes' =>

end
