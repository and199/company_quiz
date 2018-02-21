class Question < ApplicationRecord
  has_many :answers, dependent: :destroy
  has_many :choices, class_name: 'QuestionChoice', foreign_key: 'question_id', dependent: :destroy

  validates :question, presence: true
  validates :correct_answer, presence: true
end
