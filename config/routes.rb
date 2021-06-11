Rails.application.routes.draw do
  devise_for :users
  
  resources :goals do
    member do 
      get :status
      post :status
      get :done
      post :done
    end
    resources :payments, only: [:new, :show]
  end

  resources :pages
  
  get 'congratulations' => 'pages#congratulations'
  get 'referee' => 'pages#referee'

  root to: 'pages#home'

  require "sidekiq/web"
  authenticate :user, ->(user) { user.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

end
