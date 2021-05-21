Rails.application.routes.draw do
  devise_for :users
  
  resources :weight_goals
  root to: 'pages#home'
end
