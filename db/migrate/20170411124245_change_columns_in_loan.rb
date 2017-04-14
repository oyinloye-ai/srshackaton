class ChangeColumnsInLoan < ActiveRecord::Migration[5.0]
  def change
        change_column :loans, :requested_amount_cents, :integer, default: 0, :null => false
        change_column :loans,  :proposed_amount_cents, :integer, default: 0, :null => false
        change_column :loans, :agreed_amount_cents, :integer, default: 0, :null => false
  end
end
