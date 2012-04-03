Dotsearchfile::Application.routes.draw do
  resources :search_subscriptions

  resources :search_ownerships

  resources :list_subscriptions

  resources :list_ownerships

  resources :lolwuts

  resources :users
  resources :searches
  resources :search_strings
  resources :tags
  resources :search_lists
  resources :sessions, :only => [:new, :create, :destroy]
  
  match '/signup', :to => 'users#new'
  match '/signin', :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'

  resources :search_strings

  root :to => "home#index"
end
