Rails.application.routes.draw do
  resources :notices
  get 'sessions/new'

  resources :posts

  root to: "static_pages#index"
  get  'sobre', to: "static_pages#sobre"
  get  'contato', to: "static_pages#contato"
  get  'ajuda', to: "static_pages#help"
  get  'ong', to: "static_pages#ong"
  get  'terms', to: "static_pages#terms"
  get  'data', to: "static_pages#data-search"
  get  'weather', to: "static_pages#weather"
  get  'home', to: "static_pages#home" 
  get  'cadastro', to: 'users#new'
  get  'entrar',   to: 'sessions#new'
  post 'entrar',  to: 'sessions#create'
  get  'sair',  to: 'sessions#destroy'

  resources :users, only: [:show, :new, :create, :edit, :update]
  resources :posts, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :notices, only: [:index, :new, :create, :edit, :update, :destroy]
end
