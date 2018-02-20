class Supervisor < ApplicationRecord
  devise :database_authenticatable
  
  has_many :employees

  validates_presence_of :email, :name
end
