class Quote < ApplicationRecord
  validates :character, :quote, presence: true
  scope :search, -> (search_parameter) { where("character like ? or quote like ?", "%#{search_parameter}%", "%#{search_parameter}%") }
end
