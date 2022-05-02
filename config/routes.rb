Rails.application.routes.draw do
  devise_for :users

  root to: "homes#top"
  get 'home/about'=>'homes#about'

  resources :books, only: [:top, :index, :show, :edit, :create, :destroy, :update]
  resources :users, only: [:create, :index, :show, :edit, :update]
end