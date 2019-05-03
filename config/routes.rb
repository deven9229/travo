Rails.application.routes.draw do
  resources :guides
  resources :rentals
  resources :companies
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
