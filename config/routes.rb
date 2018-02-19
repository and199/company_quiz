Rails.application.routes.draw do
  devise_for :employees, controllers: {
      sessions: 'employees/sessions'
  }

  devise_for :supervisors, controllers: {
      sessions: 'supervisors/sessions'
  }
end

