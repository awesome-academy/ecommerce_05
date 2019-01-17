Rails.application.routes.draw do
  get 'users/new'
  get 'sessions/new'
  get "users/products"
  root "static_pages#home"
  get "/home", to: "static_pages#home"
  get "/help", to: "static_pages#help"
  get  "/signup",  to: "users#new"
  post "/signup",  to: "users#create"
  get    "/login",   to: "sessions#new"
  post   "/login",   to: "sessions#create"
  delete "/logout",  to: "sessions#destroy"
  resources :users
  resources :product
  get "/users", to: redirect("/")
end
