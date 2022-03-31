Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "home#home"
  get "/home", to: "home#home"
  get "/places", to: "home#home"
  post "/home/data_update", to: "home#data_update"
end
