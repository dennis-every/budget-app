class Expense < ApplicationRecord
  belongs_to :author, class_name: 'User'

  validates :name, presence: true
  validates :amount, presence: true
end
