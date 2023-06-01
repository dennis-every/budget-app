class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :icon, presence: true

  has_many :category_expenses, dependent: :destroy
  has_many :expenses, through: :category_expenses, dependent: :destroy

  def total(user)
    expenses.where(author: user).sum(&:amount)
  end
end
