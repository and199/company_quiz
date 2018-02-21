class AddQuizTakenToEmployee < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :quiz_taken, :boolean
  end
end