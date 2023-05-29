class CreateCategoryExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :category_expenses do |t|
      t.references :category, null: false, foreign_key: true
      t.references :expense, null: false, foreign_key: true

      t.timestamps
    end

    add_index :category_expenses, [:category_id, :expense_id], unique: true
  end
end
