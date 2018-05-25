Rails.application.routes.draw do
  # get 'doses/index'
  # get 'doses/new'
  # get 'doses/create'
  # get 'doses/destroy'
  root to: "cocktails#index" # because we put it as a root we don't have it in the resources!
  resources :cocktails, only: [:new, :create, :show] do
    resources :doses, only: [:new, :create, :index, :destroy]
  end

  resources :doses, only: [:destroy]
  # get 'cocktails/index'
  # get 'cocktails/show'
  # get 'cocktails/new'
  # get 'cocktails/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
