class ChangeEmployeeQuizTakenColumnDefaultToFalse < ActiveRecord::Migration[5.1]
  def change
    change_column_default :employees, :quiz_taken, false
  end
end
