class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  belongs_to :bookmark
  validates :name, uniqueness: true
end
