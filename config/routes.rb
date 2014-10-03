Visdir::Application.routes.draw do

  get "/" => "views#index", :as => "root"
  
  resources :users
  resources :listings
  resources :categories

end
