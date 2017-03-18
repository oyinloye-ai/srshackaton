class CreateFinancialTraderScores < ActiveRecord::Migration[5.0]
  def change
    create_table :financial_trader_scores do |t|
      t.float :business_revenue
      t.string :business_type
      t.float :verified
      t.text :description

      t.timestamps
    end
  end
end
