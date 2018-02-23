class EmployeesController < ApplicationController
  def show
    generate_or_continue_quiz
  end

  private

  def generate_or_continue_quiz
    if current_employee.answers.blank? #pierwsze logowanie - wygeneruj pytania
      questions = Question.all.shuffle.take(3).to_a
      questions.each do |question|
        current_employee.answers.create(question: question, content: "")
      end
      session[:questions] = current_user.answers.question_ids
    elsif current_employee.answers.not_given.exists? #ponowne logowanie - istnieją pytania bez odpowiedzi
      session[:questions] = current_user.answers.not_given.question_ids
    else #ponowne logowanie - wszystkie pytania mają odpowiedzi
      session[:questions] = nil
    end
    questions
  end
end
