Rails.application.routes.draw do
  resources :students
  resources :courses
  root to: 'students#index'
end
