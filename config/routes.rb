Rails.application.routes.draw do
  devise_for :users
  
  resources :goals do
    resources :payments, only: :new
  end
  
  # get 'new_transaction' => 'transactions#create'
  root to: 'pages#home'
end
