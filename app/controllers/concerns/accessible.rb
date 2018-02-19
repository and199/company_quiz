module Accessible
  extend ActiveSupport::Concern
  included do
    before_action :check_user
  end

  protected
  def check_user
    if current_supervisor
      flash.clear
      redirect_to(supervisor_session_path) && return
    elsif current_employee
      flash.clear
      redirect_to(employee_session_path) && return
    end
  end
end