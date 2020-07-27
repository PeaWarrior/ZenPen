Rails.application.routes.draw do
  resources :user_audios
  resources :post_tags
  resources :tags
  resources :posts
  
  resources :users, only: [:create, :edit, :update, :destroy]

  resources :audios

  post '/posts/new', to: 'posts#create'

  root 'basics#welcome'

  get '/signup', to: 'users#new', as: :signup
  get '/login', to: 'sessions#new', as: :login
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy' 
  get '/prompt', to: 'posts#prompt'

  get '/meditate', to: 'audios#index', as: :meditate
  post '/add-to-favorites', to: 'user_audios#create'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
