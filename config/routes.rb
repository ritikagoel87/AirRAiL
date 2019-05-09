Rails.application.routes.draw do
  resources :users
  resources :reservations
  resources :planes
  resources :flights
  resources :airports
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
