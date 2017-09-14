Rails.application.routes.draw do
  resources :groups
  resources :bodies
  resources :movements
  resources :bodyparts
  resources :exercises
  resources :muscles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
