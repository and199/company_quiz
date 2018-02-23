class Question < ApplicationRecord
  has_many :answers, dependent: :destroy
  has_many :choices, class_name: 'QuestionChoice', foreign_key: 'question_id', dependent: :destroy

  validates :content, presence: true
  validates :correct_answer, presence: true

end
