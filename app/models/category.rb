class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :icon, presence: true

  has_many :category_expenses
  has_many :expenses, through: :category_expenses
end
