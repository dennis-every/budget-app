class CategoryExpense < ApplicationRecord
  belongs_to :category
  belongs_to :expense, inverse_of: :category_expenses
end
