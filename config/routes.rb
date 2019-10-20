Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  get 'posts/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'home#index'

  resources :posts, only: [:new, :create]

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'sign_in', to: 'devise/registrations#new'
  end
end
