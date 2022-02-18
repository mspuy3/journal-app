Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "tasks#today"
  # root "home#index"

  resources :labels
  resources :tasks
  resources :glues

  get '/today', to: 'tasks#today'
  

end
