class Supervisor < ApplicationRecord
  devise :database_authenticatable

  validates_presence_of :email, :name
end
