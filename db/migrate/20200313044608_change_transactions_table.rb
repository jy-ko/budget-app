class ChangeTransactionsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :budgets, :actual_value, :float
    remove_reference :transactions, :budget, foreign_key: true
    drop_table :transactions
  end
end
