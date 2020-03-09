class ChangeBudgetsTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :budgets, :period, :string
    remove_column :budgets, :category, :string
    remove_column :budgets, :actual_value, :float
  end
end
