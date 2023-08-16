class Restaurant < ApplicationRecord
  # Validation rules
  # A restaurant must have a name, an address and a category.
  validates :name, presence: true
  validates :address, presence: true
  # A restaurant’s category must belong to this fixed list: ["chinese", "italian", "japanese", "french", "belgian"].
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }

  # Associations
  # When a restaurant is destroyed, all of its reviews must be destroyed as well.
  has_many :reviews, dependent: :destroy
end
