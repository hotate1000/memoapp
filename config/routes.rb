Rails.application.routes.draw do
  root 'memos#index'
  # resources :memos  
  resources :memos
  resources :mmemos
end
