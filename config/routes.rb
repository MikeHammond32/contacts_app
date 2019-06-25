Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  namespace :api do
  get "/contacts" => "contacts#show"
  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  #   get "/photos" => "photos#index"
  end
end
