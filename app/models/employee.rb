class Employee < ApplicationRecord
  devise :database_authenticatable

  belongs_to :supervisor

  validates_presence_of :email, :name
end
