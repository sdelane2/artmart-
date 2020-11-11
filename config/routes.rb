Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'artworks#index'
  resources :favorite_artworks, :users, :sessions

  resources :artworks do
  	resources :reviews, except: [:show, :index]
  end

  delete '/users/:id', to: 'users#destroy', as: 'destroy_user'

  delete '/sessions/page_reset', to: 'sessions#page_reset', as: 'page_reset'
  delete '/sessions/logout', to: 'sessions#logout', as: 'logout'
  get '/sessions/new', to: 'sessions#new', as: 'new_login'
  post '/sessions', to: 'sessions#create', as: 'login'

end
