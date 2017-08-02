Rails.application.routes.draw do
  resources :brands
  resources :products

  root 'brands#index'
end
