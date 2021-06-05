Rails.application.routes.draw do
  devise_for :users
  
  resources :goals do
    get 'done' => 'goals#done'
    resources :payments, only: [:new, :show]
  end
  
  get 'congratulations' => 'pages#congratulations'
  root to: 'pages#home'

  require "sidekiq/web"
  authenticate :user, ->(user) { user.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

end
