class RenameColumnsInLoan < ActiveRecord::Migration[5.0]
  def change
    rename_column :loans, :requested_amount, :requested_amount_cents
    rename_column :loans, :proposed_amount, :proposed_amount_cents
    rename_column :loans, :agreed_amount, :agreed_amount_cents
  end
end
