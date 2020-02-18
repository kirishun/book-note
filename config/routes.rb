Rails.application.routes.draw do
  devise_for :users
  root to: 'notes#index'
  namespace :notes do
    resources :searches, only: :index
  end
  resources :notes
  resources :users, only: [:edit, :update]
end
