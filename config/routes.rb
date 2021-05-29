Rails.application.routes.draw do
  devise_for :users
  
  resources :goals do
    resources :payments, only: [:new, :show]
  end
  
  get 'congratulations' => 'pages#congratulations'
  root to: 'pages#home'

end
