class CreateQuestionChoices < ActiveRecord::Migration[5.1]
  def change
    create_table :question_choices do |t|
      t.references :question, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
