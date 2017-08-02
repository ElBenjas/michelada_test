Rails.application.routes.draw do
  get 'static_pages/home'

  resources :brands
  resources :products

  root 'static_pages#home'
end
