Rails.application.routes.draw do
  resources :storages, only: [:index, :create, :destroy]
  resources :sales, only: [:index, :create, :show, :update, :destroy]
  resources :sale_items, only: [:index, :create, :show, :update, :destroy]
  resources :customers, only: [:index, :create, :show, :update, :destroy]
  resources :payments, only: [:index, :create, :show, :update, :destroy]
end
