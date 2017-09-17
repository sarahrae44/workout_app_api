Rails.application.routes.draw do
  root 'welcome#index'

  resources :users do
    collection do
      post '/login', to: 'users#login'
    end
  end

  resources :groups
  resources :bodies
  # resources :movements
  # resources :bodyparts
  resources :exercises, only: [:index, :show, :update, :destroy, :create]
  # resources :muscles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
