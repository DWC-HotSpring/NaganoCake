Rails.application.routes.draw do
  namespace :admins do
    get 'homes/top'
    resources :customers, only: [:index, :edit, :show, :update]
    resources :products, only: [:index, :edit, :show, :update, :new, :create]
    resources :genres, only: [:index, :edit, :update, :create]
    resources :orders, only: [:index, :show, :update]
  end
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
