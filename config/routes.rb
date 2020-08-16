Rails.application.routes.draw do
  namespace :admins do
    get 'orders/index'
    get 'orders/show'
  end
  namespace :admins do
    get 'genres/index'
    get 'genres/edit'
  end
  namespace :admins do
    get 'customers/index'
    get 'customers/show'
    get 'customers/edit'
  end
  namespace :admins do
    get 'products/index'
    get 'products/show'
    get 'products/new'
    get 'products/edit'
  end
  namespace :admins do
    get 'homes/top'
  end
  devise_for :admins
  
  #顧客用サイトのルーティング
  devise_for :customers

  resources :products, only: [:index, :show]


  resources :orders, only: [:new, :index, :create, :show]
    get 'orders/confirm' => 'orders#confirm'
    get 'orders/thanks' => 'orders#thanks'
  resources :order_products, only: [:new, :create, :index, :show]
  resources :cart_items, only: [:index, :create, :update, :destroy] do
    collection do
      delete 'destroy_all'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
