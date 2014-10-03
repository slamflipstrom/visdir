Visdir::Application.routes.draw do

  root :to => 'pages#index'
  
  resources :users
  resources :listings
  resources :categories

end
