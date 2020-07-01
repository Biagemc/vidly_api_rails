Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  namespace :api do
    get "/customers" => "customers#index"
    get "/customers" => "customers#show"
    get "/customers" => "customers#create"
    get "/customers" => "customers#update"
    get "/customers" => "customers#destroy"
    # get "/genres" =>
    # get "/movies" =>
    # get "/users" =>
    # get "/sessions" =>
    # get "/rentals" =>
  end
end
