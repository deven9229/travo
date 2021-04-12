Rails.application.routes.draw do
  root to: 'welcome#index'
  devise_for :users
  resources :guides
  resources :rentals
  resources :companies
  resources :searches
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
