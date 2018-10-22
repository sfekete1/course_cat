Rails.application.routes.draw do
  resources :courses
  resources :subjects
  resources :instructors
  get 'static_pages/home'

  get 'courses#index'

  get 'subjects#index'

  get 'instructors#index'

  root 'static_pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
