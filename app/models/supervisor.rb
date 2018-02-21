class Supervisor < ApplicationRecord
  devise :database_authenticatable, :validatable

  has_many :employees

  validates :email, presence: true
  validates :name, presence: true
end