class RemoveYearMonthFromIncomes < ActiveRecord::Migration[5.2]
  def change
    remove_column :incomes, :year_month, :integer
  end
end
