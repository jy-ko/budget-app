class AddReferencesToTransactions < ActiveRecord::Migration[5.2]
  def change
    add_reference :transactions, :budget, foreign_key: true
    add_reference :transactions, :period, foreign_key: true
  end
end
