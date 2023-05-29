class Expense < ApplicationRecord
  belongs_to :author, class_name: 'User'

  validates :name, presence: true
  validates :amount, presence: true

  has_many :category_expenses
  has_many :categories, through: :category_expenses
end
