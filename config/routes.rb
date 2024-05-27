Rails.application.routes.draw do
  get 'sessions/new'

  resources :posts
  root to: "static_pages#index"
  get 'sobre', to: "static_pages#sobre"
  get 'contato', to: "static_pages#sobre"

  get 'cadastro', to: 'users#new'
  get 'entrar',   to: 'sessions#new'
  post 'entrar',  to: 'sessions#create'
  get 'sair',  to: 'sessions#destroy'

  resources :users, only: [:show, :new, :create, :edit, :update]
  resources :posts, only: [:index, :new, :create, :edit, :update, :destroy]

end
