class AddReferencesToBudgets < ActiveRecord::Migration[5.2]
  def change
    add_reference :budgets, :user, foreign_key: true
    add_reference :budgets, :category, foreign_key: true
  end
end
