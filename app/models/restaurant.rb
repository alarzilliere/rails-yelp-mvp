class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  # validates :phone_number, numericality: { only_integer: true }
  validates :category, inclusion: %w(chinese italian japanese french belgian)
end
