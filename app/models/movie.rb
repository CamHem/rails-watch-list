class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks

  # Un film doit avoir un titre unique et un aperçu.
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end
