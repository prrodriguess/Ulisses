Rails.application.routes.draw do
  devise_for :users
  
  resources :goals
  root to: 'pages#home'
  get 'new_transaction' => 'transactions#create'
  resources :transactions, only: [:show, :create] do
    resources :payments, only: :new
  end
end
