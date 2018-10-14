Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/courses'

  get 'static_pages/subjects'

  get 'static_pages/instructors'

  root 'StaticPages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
