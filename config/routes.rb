Rails.application.routes.draw do
  root 'dashboard#index'

  resources :users, only: [:show] do
    resources :invoices, param: :number, only: [:show]
  end

end
