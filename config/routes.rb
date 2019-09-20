Rails.application.routes.draw do
  get 'comments/create'
  root 'posts#index'

  get 'login', to: 'sessions#new'

  post 'login', to: 'sessions#create'

  delete 'logout', to: 'sessions#destroy'

  resources :users, only: [:new, :create]

  resources :posts do
  	resources :comments, only: [:create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
