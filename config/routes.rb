Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/today', to: 'tasks#today'
  
  root "tasks#today"
  # root "home#index"

  resources :labels
  resources :tasks
  resources :glues

  
  

end
