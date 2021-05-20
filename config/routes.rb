Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :weight_goals

  resources :transactions, only: [:show, :create] do
    resources :payments, only: :new
  end
end
