Rails.application.routes.draw do
  root 'dashboard#index'

  resources :users, only: [:show] do
    resources :invoices, param: :number, only: [:show] do
      post :import, param: :number, on: :collection
    end
  end

  resources :items
end
