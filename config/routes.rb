Rails.application.routes.draw do
  resources :messages
  resources :user_rooms
  resources :rooms
  resources :users

  post '/signup', to: 'users#create'
  get '/profile', to: 'users#profile'
  
  
  post '/login', to: 'auth#login'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
