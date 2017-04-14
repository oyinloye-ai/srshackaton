class ChangeColumnNameInLoan < ActiveRecord::Migration[5.0]
  def change
    rename_column :loans, :purpose_amount, :proposed_amount
  end
end
