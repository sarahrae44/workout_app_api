Rails.application.routes.draw do
  resources :usersaves
  resources :usergroups
  resources :userexercises
  root 'welcome#index'

  resources :users do
    collection do
      post '/login', to: 'users#login'
      post ':id/exercises', to: 'users#exercises'
    end
  end

  # resources :muscle_groups
  resources :groups 
  resources :bodies
  # resources :movements
  # resources :bodyparts
  resources :exercises
  # resources :muscles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
