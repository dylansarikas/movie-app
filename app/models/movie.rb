class Movie < ApplicationRecord
  validates :title, :year, presence: true
  validates :director, length: { minimum: 3 }
  validates :plot, length: { minimum: 10 }
  validates :year, numericality: { only_integer: true }

  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres
  
  
end
