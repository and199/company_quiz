class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    current_supervisor || current_employee
  end
end
