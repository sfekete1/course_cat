Rails.application.routes.draw do
  resources :enrollments
  resources :courses
  resources :instructors
  resources :subjects
  resources :users
  root   'static_pages#home'

  ###### Basic data tab pages
  get   '/courses', to: 'courses#index'
  get   '/subjects', to: 'subjects#index'
  get   '/instuctors', to: 'instructors#index'

  ###### Search
  get   '/search', to: 'static_pages#search'
  get   '/enrollment', to: 'enrollments#show'

  ###### Login & Signup
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get    '/signup',  to: 'users#new'
  get    'sessions/new'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
