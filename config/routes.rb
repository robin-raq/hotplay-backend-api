Rails.application.routes.draw do
  resources :messages
  resources :user_rooms
  resources :rooms
  resources :users

  post '/signup', to: 'users#create'
  get '/profile', to: 'users#profile'
  
  
  post '/login', to: 'auth#login'

  #route to initiate WebSocket connection
  # root to: 'messages#root'
  mount ActionCable.server => '/cable'
end
