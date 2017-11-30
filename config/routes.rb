Rails.application.routes.draw do
  get 'reservations/index'

  get 'reservations/new'

  get 'reservations/create'

  get 'reservations/update'

  get 'reservations/destroy'

  get 'shets/index'

  root to: 'pages#home'

  devise_for :users

  resources :shets, only: [:index, :show] do
    resources :reservations, only: [:new, :create] # as renter
  end

  resources :reservations, only: [:index] # as renter

  resources :myshets, only: [:index, :show, :new, :create] # as owner

  resources :requests, only: [] do # as owner that received reservations (aka requests)
    member do
      patch :accept
      patch :decline
      patch :cancel
    end
  end
end
