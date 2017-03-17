Rails.application.routes.draw do
  resources :comments
  resources :posts do
    member do
        get 'toggle_follow', to: 'posts#toggle_follow'
      end
    end
    devise_for :users
    root 'pages#home'
    get 'pages/posts'

  # resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
