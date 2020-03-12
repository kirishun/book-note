Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root to: 'notes#index'

  resources :notes do
    collection do
      get 'search'
    end
  end

  resources :users, only: [:edit, :update]

end
