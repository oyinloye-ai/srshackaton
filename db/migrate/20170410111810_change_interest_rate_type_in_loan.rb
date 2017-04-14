class ChangeInterestRateTypeInLoan < ActiveRecord::Migration[5.0]
  def change
        change_column :loans, :interest_rate, :float
  end
end
