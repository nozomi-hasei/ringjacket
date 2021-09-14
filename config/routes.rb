Rails.application.routes.draw do
  devise_for :users
  root to: 'inputs#new'
  resources :inputs, only: [:index, :new, :create]
end
