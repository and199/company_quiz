class AddSupervisorToEmployee < ActiveRecord::Migration[5.1]
  def change
    add_reference :employees, :supervisor, foreign_key: true
  end
end
