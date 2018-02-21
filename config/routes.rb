Rails.application.routes.draw do

  get 'employees/show'

  get 'questions/show'

  root to: 'static_pages#home'

  devise_for :employees, controllers: {
      sessions: 'employees/sessions'
  }

  devise_for :supervisors, controllers: {
      sessions: 'supervisors/sessions'
  }

  resources :supervisors
end

