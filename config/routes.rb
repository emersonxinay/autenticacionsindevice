Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'users/sign_up', to: "users#new"
  get 'users/sign_in', to: "sessions#new"
  post 'users', to: "users#create"
  root to: 'users#new'
  resources :sessions, only: [:create, :destroy]


end
