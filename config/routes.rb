Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  namespace :api do
    get "/contacts" => "contacts#index"
    get "/contacts/:id" => "contacts#show"
    post "/contacts" => "contacts#create"
  end
end
