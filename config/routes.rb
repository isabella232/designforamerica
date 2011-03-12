Secretsauce::Application.routes.draw do

  resources :projects

  resources :profiles
  
  devise_for :users

  #search
  get "search/index"
  match 'search', :to => 'search#index'  
  root :to => "home#index"
end
