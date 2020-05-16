Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  resources :event_attendances, only: [:create]
  resources :sessions, only: [:create, :destroy]
  resources :events, only: [:index, :show, :new, :create]
  resources :users, only: [:new, :create, :show]
  root 'events#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
