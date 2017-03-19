class CreateFinTraderWeights < ActiveRecord::Migration[5.0]
  def change
    create_table :fin_trader_weights do |t|
      t.float :business_revenue
      t.float :business_type
      t.float :verified
      t.text :description

      t.timestamps
    end
  end
end
