module ApplicationHelper
  def estimate_employee_quiz_result(employee)
    employee.answers.select do |answer|
      answer.content == answer.question.correct_answer
    end.size
  end
end
