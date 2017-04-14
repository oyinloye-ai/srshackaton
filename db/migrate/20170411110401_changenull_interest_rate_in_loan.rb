class ChangenullInterestRateInLoan < ActiveRecord::Migration[5.0]
  def change
    change_column :loans, :interest_rate, :integer, :null => false
  end
end
