class ExpensesController < ApplicationController
  before_action :set_category, only: %i[index new create]

  def index
    @expenses = @category.expenses
  end

  def new
    @expense = Expense.new
  end

  def create
    @expense = Expense.new(expense_params)
    @expense.author = current_user
    if @expense.save
      redirect_to @category
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_category
    @category = Category.find(params[:category_id])
  end

  def expense_params
    params.require(:expense).permit(:name, :amount, category_ids: [])
  end
end
