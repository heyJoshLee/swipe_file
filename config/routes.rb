Rails.application.routes.draw do

  root to: "pages#index"  

  get "signup", to: "users#new"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  resources :users, except: [:new], param: :slug

  resources :types, param: :slug
  resources :industries, param: :slug

  resources :votes, only: [:create]

  resources :posts, param: :slug do
    resources :comments
  end
end
