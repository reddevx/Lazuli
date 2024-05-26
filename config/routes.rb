Rails.application.routes.draw do
  resources :posts
  root to: "static_pages#index"
  get 'sobre', to: "static_pages#sobre"
  get 'contato', to: "static_pages#sobre"

  resources :posts, only: [:index, :new, :create, :edit, :update, :destroy]
end
