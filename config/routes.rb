Rails.application.routes.draw do
  root 'dashboard#index'

  resources :users, only: [:show] do
    resources :invoices, only: [:show] do
      post :import, on: :collection
    end
  end

  resources :items, only: [:index]
end
