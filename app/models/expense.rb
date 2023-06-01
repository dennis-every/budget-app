class Expense < ApplicationRecord
  belongs_to :author, class_name: 'User'

  validates :name, presence: true
  validates :amount, presence: true
  validate :must_have_at_least_one_category

  has_many :category_expenses, dependent: :destroy
  has_many :categories, through: :category_expenses, dependent: :destroy

  scope :ordered, -> { order(created_at: :desc) }

  private

  def must_have_at_least_one_category
    errors.add(:categories, 'must have at least one') if categories.empty?
  end
end
