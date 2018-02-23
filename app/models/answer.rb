class Answer < ApplicationRecord
  belongs_to :employee
  belongs_to :question

  scope :not_given, -> { where(content: [nil, ""]) }
  scope :question_ids, -> { pluck(:question_id) }
end
