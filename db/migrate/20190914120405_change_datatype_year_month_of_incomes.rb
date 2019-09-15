class ChangeDatatypeYearMonthOfIncomes < ActiveRecord::Migration[5.2]
  def change
    change_column :incomes, :year_month, :date, null: false
  end
end
