Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :weight_goals
end
