Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  get 'pages/posts'

  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
