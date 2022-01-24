class Actor < ApplicationRecord
  validates :known_for, presence: true
  validates :first_name, :last_name, length: { minimum: 2 }
  validates :age, numericality: { greater_than: 13 }

  belongs_to :movie
end
