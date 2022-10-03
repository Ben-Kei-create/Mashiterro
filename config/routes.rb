Rails.application.routes.draw do
root to: 'homes#top'
devise_for :users


  resources :post_images, only: [:new, :index, :show]

# resources メソッドは、ルーティングを一括して自動生成してくれる機能です。

  # get 'postimages/new'
  # get 'postimages/index'
  # get 'postimages/show'

get '/homes/about' => 'homes#about', as: 'about'

end