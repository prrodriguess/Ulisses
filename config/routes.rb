Rails.application.routes.draw do
  devise_for :users
  
  resources :goals do
    member do 
      get :status
      post :status
      post :done
      post :failed
    end
    resources :payments, only: [:new, :show]
  end

  resources :pages
  
  get 'congratulations' => 'pages#congratulations'

  root to: 'pages#home'

  require "sidekiq/web"
  authenticate :user, ->(user) { user.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

end
