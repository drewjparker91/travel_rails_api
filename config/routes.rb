Rails.application.routes.draw do
  resources :reviews
  # get 'places/most_recent', to: 'reviews#recent'
  get 'places/random', to: 'reviews#random'
end
