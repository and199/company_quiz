class Answer < ApplicationRecord
  belongs_to :employee
  belongs_to :question

  validates :answer, presence: true

  scope :not_given, -> { where(answer: nil) }
end
