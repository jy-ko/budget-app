class ChangePeriodToBeDatetime < ActiveRecord::Migration[5.2]
  def change
    change_column :budgets, :period, 'date USING CAST(period AS date)'
  end
end
