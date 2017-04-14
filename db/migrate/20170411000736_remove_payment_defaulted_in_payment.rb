class RemovePaymentDefaultedInPayment < ActiveRecord::Migration[5.0]
  def change
        remove_column :payments, :payment_defaulted
  end
end
