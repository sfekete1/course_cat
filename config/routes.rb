Rails.application.routes.draw do

  resources :courses
  resources :instructors
  resources :subjects
  resources :users

 
  #There are future implementation aspects to put in these as well as path listings (listing 5.43)
  #get 'static_pages/home'

  get   '/courses', to: 'courses#index'
  get   '/subjects', to: 'subjects#index'
  get   '/instuctors', to: 'instructors#index'
  ######
  get   '/search', to: 'static_pages#search'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  get 'sessions/new'

  get  '/signup',  to: 'users#new'

  root 'static_pages#home'

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
