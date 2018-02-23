class AnswersController < ApplicationController
  def create

  end

  def update
    if params[:question]
      answer = Answer.find_by(question_id: params[:id], employee_id: current_user.id)
      employee_answer = Question.find(params[:id]).choices.find(params[:question][:choices]).choice
      answer.update_attribute('answer', employee_answer)
      next_question_id = current_user.answers.not_given.question_ids.sample
      redirect_to question_path(next_question_id)
    else
      flash.now[:notice] = "Proszę zaznaczyć odpowiedź"
      status :ok
    end
  end
end
