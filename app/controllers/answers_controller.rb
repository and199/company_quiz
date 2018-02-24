class AnswersController < ApplicationController
  def update
    answer = Answer.find(params[:id])

    if request.xhr?
      flash[:alert] = "Czas na odpowiedź dla poprzedniego pytania został przekroczony."
      answer.update_attribute('content', "time_is_up")
    else
      employee_choice = QuestionChoice.find(params[:question][:choices]).content
      answer.update_attribute('content', employee_choice)
    end

    remove_question_from_pool
    redirect_to next_step
  end

  private

  def remove_question_from_pool
    session[:questions].delete(question_id)
  end

  def next_step
    if session[:questions].blank?
      employee_path(current_employee)
    else
      question_path(Question.find(session[:questions].sample))
    end
  end

  def question_id
    (params[:question_id] || params[:question][:question_id]).to_i
  end

  def next_question
    question_path(session[:questions].sample)
  end
end
