Rails.application.routes.draw do
  root to: 'static_pages#home'

  devise_for :employees, controllers: {
      sessions: 'employees/sessions'
  }

  devise_for :supervisors, controllers: {
      sessions: 'supervisors/sessions'
  }
end

