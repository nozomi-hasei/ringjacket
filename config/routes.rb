Rails.application.routes.draw do
  root to: 'inputs#new'
  resources :inputs, only: [:index, :new, :create]
end
