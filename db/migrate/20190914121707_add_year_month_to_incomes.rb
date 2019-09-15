class AddYearMonthToIncomes < ActiveRecord::Migration[5.2]
  def change
    add_column :incomes, :year_month, :date, null: false
  end
end
