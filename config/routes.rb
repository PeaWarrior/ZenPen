Rails.application.routes.draw do
  resources :user_audios
  resources :audios
  resources :post_tags
  resources :tags
  resources :posts
  
  resources :users, only: [:create, :edit, :update, :destroy]

  post '/posts/new', to: 'posts#create'

  root 'basics#welcome'
  get '/signup', to: 'users#new', as: :signup
  get '/login', to: 'sessions#new', as: :login
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy' 
  

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
