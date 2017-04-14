class RenameColumnToPayment < ActiveRecord::Migration[5.0]
  def change
        rename_column :payments, :amount_paid, :amount_cents
  end
end
