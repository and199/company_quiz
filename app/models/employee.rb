class Employee < ApplicationRecord
  devise :database_authenticatable, :validatable

  belongs_to :supervisor
  has_many :answers, dependent: :destroy

  validates :email, presence: true
  validates :name, presence: true
  
end
