class RenameDescriptionColumnToIncomes < ActiveRecord::Migration[5.2]
  def change
    rename_column :incomes, :description, :discription
  end
end
