Dotsearchfile::Application.routes.draw do
  resources :users
  resources :sessions, :only => [:new, :create, :destroy]
  
  match '/signup', :to => 'users#new'
  match '/signin', :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'

  resources :search_strings

  root :to => "home#index"
end
