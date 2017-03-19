class CreateFinancialScoreWeights < ActiveRecord::Migration[5.0]
  def change
    create_table :financial_score_weights do |t|
      t.float :self_sponsored
      t.float :government_sponsored
      t.float :family_sponsored
      t.float :verified
      t.text :description

      t.timestamps
    end
  end
end
