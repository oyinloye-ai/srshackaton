class ChangePaymentFrequencyInLoan < ActiveRecord::Migration[5.0]
  def change
        change_column :loans, :payment_frequency, :integer, default: 1, :null => false
  end
end
