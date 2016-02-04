Rails.application.routes.draw do
  resources :students
  resources :courses
  get "/classrooms", to:  "classrooms#index"
  get "/classrooms/new/:id", to:  "classrooms#new"
  post "/classrooms" , to:  "classrooms#create"
  root to: 'students#index'
end
