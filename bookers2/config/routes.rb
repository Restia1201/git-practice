Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users
  resources :books, only: [:new, :create, :index, :show, :edit, :destroy ]
  resources :users, only: [:show, :edit]

  get 'homes/about' => 'homes#about', as:'about'
end