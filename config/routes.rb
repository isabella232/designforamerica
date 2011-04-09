Secretsauce::Application.routes.draw do

  resources :designs
  
  match "projects/termsofservice", :to=>"projects#termsofservice"
  
  resources :projects
  
  #do 
  #    resources :designs
  #end
  
  
  resources :profiles
  
  resources :aboutus
  
  # this means that the Devise views will be used for rendering user/ paths like users/sign_in
  devise_for :users

  #search
  get "search/index"
  match 'search', :to => 'search#index'  
  root :to => "home#index"
end
