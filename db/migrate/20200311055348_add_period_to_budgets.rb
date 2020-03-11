class AddPeriodToBudgets < ActiveRecord::Migration[5.2]
  def change
    add_column :budgets, :period, :string
  end
end
