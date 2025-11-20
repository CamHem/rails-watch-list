class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  # les associations [film, liste] doivent être uniques.
  validates_uniqueness_of :movie, :scope => [:list]

  # Le commentaire associé à un signet ne peut pas avoir moins de 6 caractères.
  validates :comment, length: { minimum: 6 }
end
