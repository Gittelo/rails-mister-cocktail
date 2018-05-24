class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy #order dependecy!
  has_many :ingredients, through: :doses
  validates :name, presence: true, uniqueness: true
end
