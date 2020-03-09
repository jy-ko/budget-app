class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.float :actual_value

      t.timestamps
    end
  end
end
