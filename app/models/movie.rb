class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :movies

  validates :title, uniqueness: true
  validates :title, presence: true
  validates :overview, presence: true
end
