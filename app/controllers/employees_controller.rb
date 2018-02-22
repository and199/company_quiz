class EmployeesController < ApplicationController
  def show
    unless current_employee.quiz_taken
      binding.pry
      @questions = generate_or_continue_quiz
    end
  end

  private

  def generate_or_continue_quiz
    binding.pry
    if current_employee.answers.blank?
      questions = Question.all.shuffle.take(3).to_a
      questions.each do |question|
        current_employee.answers.create(question: question, answer: "")
      end
    else
      questions = current_employee.answers.not_given.to_a
    end
    questions
  end
end
