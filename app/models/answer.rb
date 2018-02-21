class Answer < ApplicationRecord
  belongs_to :employee
  belongs_to :question

  validates :answer, presence: true
end
