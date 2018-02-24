class AnswersController < ApplicationController
  def update
    binding.pry
    if request.xhr?
      binding.pry
    else
      answer = Answer.find_by(question_id: params[:id], employee_id: current_user.id)
      employee_answer = Question.find(params[:id]).choices.find(params[:question][:choices]).content
      answer.update_attribute('content', employee_answer)
      session[:questions].delete(params[:id].to_i)
      if session[:questions].blank?
        redirect_to employee_path(current_employee)
      else
        redirect_to question_path(Question.find(session[:questions].sample))
      end
    end

  end
end
