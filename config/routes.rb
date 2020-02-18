Rails.application.routes.draw do
  devise_for :users
  root to: 'notes#index'
  namespace :notes do
    resources :searches, only: :index
  end
  resources :notes,only: [:index, :new, :create, :edit, :update, :destroy]
  resources :users, only: [:edit, :update]
end
