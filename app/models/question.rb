class Question < ApplicationRecord
  has_many :answers
  has_many :question_choices
end
