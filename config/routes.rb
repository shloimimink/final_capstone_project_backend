Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
    patch "/users/:id" => "users#update"
    get "/users" => "users#index"
    get "/users/:id" => "users#show"
    delete "/users/:id" => "users#destroy"

    get "/airlines" => "airlines#index"

    get "/posts" => "posts#index"
    post "/posts" => "posts#create"
    delete "/posts/:id" => "posts#destroy"

    get "/comments" => "comments#index"
    post "/comments" => "comments#create"
    delete "/comments/:id" => "comments#destroy"

    get "/images" => "images#index"
    post "/images" => "images#create"
    delete "images/:id" => "images#destroy"

    get "/airplane_users" => "airplane_users#index"
    get "airplane_users/:id" => "airplane_users#show"
    post "/airplane_users" => "airplane_users#create"
    patch "/airplane_users/:id" => "airplane_users#update"
    delete "/airplane_users/:id" => "airplane_users#destroy"
  end
end
