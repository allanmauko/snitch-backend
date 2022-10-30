Rails.application.routes.draw do

  resources :comments
  resources :articles
  resources :bookmarks
  resources :categories
  resources :admins
  resources :users
  


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  post"/signup", to: "users#create"
  post "/login", to: "sessions#create"
  get "/me", to: "users#show"
  delete "/logout", to: "sessions#destroy"
  # Defines the root path route ("/")

 #ADMINS SESSION DATA
  get "/admin_me", to: "admin#show"
  post "/admin_login", to: "admin_sessions#create"
  delete "/admin_logout", to: "admin_sessions#destroy"
  post '/admin_signup', to: 'admin#create'
  # root "articles#index"
end
