class AddAmountToIncomes < ActiveRecord::Migration[5.2]
  def change
    add_column :incomes, :amount, :integer, null: false
    add_column :incomes, :year_month, :integer, null: false
  end
end
