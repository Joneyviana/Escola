Rails.application.routes.draw do
  resources :students do
      post 'check_register_number', on: :collection
      resource :classrooms , only:[:new,:create]

  end
  resources :courses

  root to: 'students#index'


end
