class CreateBudgets < ActiveRecord::Migration[5.2]
  def change
    create_table :budgets do |t|
      t.string :period
      t.string :category
      t.float :budgeted_value
      t.float :actual_value

      t.timestamps
    end
  end
end
