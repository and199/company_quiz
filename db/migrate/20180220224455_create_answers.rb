class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.references :employee, foreign_key: true
      t.references :question, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
