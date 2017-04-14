class ChangeAmountCentsInPayment < ActiveRecord::Migration[5.0]
  def change
    change_column :payments, :amount_cents, :integer
  end
end
