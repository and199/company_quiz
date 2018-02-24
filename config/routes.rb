Rails.application.routes.draw do
  root to: 'static_pages#home'

  devise_for :employees, controllers: {
      sessions: 'employees/sessions'
  }

  devise_for :supervisors, controllers: {
      sessions: 'supervisors/sessions'
  }

  resources :supervisors, only: [:show]
  resources :employees, only: [:show]
  resources :questions, only: [:show]
  resources :answers, only: [:update, :destroy]
end

