Rails.application.routes.draw do
  resources :user_audios
  resources :audios
  resources :post_tags
  resources :tags
  resources :posts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
