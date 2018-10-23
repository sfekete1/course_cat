Rails.application.routes.draw do
  resources :courses
  resources :subjects
  resources :instructors
  resources :users

 
  #There are future implementation aspects to put in these as well as path listings (listing 5.43)
  #get 'static_pages/home'

  #get 'courses#index'

  #get 'subjects#index'

  #get 'instructors#index'
  #get 'users/new'
  get  '/signup',  to: 'users#new'

  root 'static_pages#home'

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
