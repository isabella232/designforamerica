Secretsauce::Application.routes.draw do

  resources :profiles

  #ratings
  post "rate", :to => 'interviews#rate'

  resources :axes
  resources :roles
  resources :projects
  resources :interviews
  
  devise_for :users

  #search
  get "search/index"
  match 'search', :to => 'search#index'  
  get "home/index"

  root :to => "home#index"
end
