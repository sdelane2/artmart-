Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'artworks#index'
  resources :artworks, :purchased_artworks, :reviews, :users, :reviewed_artworks

end
