Rails.application.routes.draw do
  resources :courses
  resources :subjects
  resources :instructors
  get 'static_pages/home'

  get 'static_pages/courses'

  get 'static_pages/subjects'

  get 'static_pages/instructors'

  root 'application#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
