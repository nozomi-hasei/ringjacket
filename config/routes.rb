Rails.application.routes.draw do
  root to: 'inputs#index'
  resources :inputs, only: [:index, :new, :create]
end
