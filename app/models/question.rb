class Question < ApplicationRecord
  has_many :answers
  has_many :question_choices

  validates :question, presence: true
  validates :correct_answer, presence: true
end
