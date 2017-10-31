class Pet < ApplicationRecord
  CATEGORIES = ["cat", "dog", "fish", "bird", "rabbit", "cow"]

  validates :name, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
