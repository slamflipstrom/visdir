Visdir::Application.routes.draw do

  root :to => 'pages#index'
  
  resources :users
  resources :listings
  resources :categories
  
  get "/logout" => 'logins#destroy', :as => "logout"
  
  get "/login" => 'logins#new', :as => "login"
  post "/login" => 'logins#create', :as => "create_login"
  
  post "/create_user" => 'users#create', :as => "create_user"
  get "/signup" => 'users#new', :as => "signup"

end
