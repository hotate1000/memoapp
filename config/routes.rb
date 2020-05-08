Rails.application.routes.draw do
  devise_for :users
  root 'memos#index'
  # resources :memos  
  resources :memos
  resources :mmemos
  resources :dmemos
  resources :users, only:[:edit, :update]
end
