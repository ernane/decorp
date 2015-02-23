Rails.application.routes.draw do
  root 'dashboard#index'

  resources :users, only: [:index, :show] do
    resources :invoices, param: :number, only: [:index, :show]
  end

end
