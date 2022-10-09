Rails.application.routes.draw do
  resources :users, only: [:show, :edit]
  devise_for :users
  root to: 'homes#top'
  get "homes/about" => "homes#about", as: "about"

  resources :post_images, only: [:new, :create, :index, :show, :destroy]

end