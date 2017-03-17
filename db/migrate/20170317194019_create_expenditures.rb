class CreateExpenditures < ActiveRecord::Migration[5.0]
  def change
    create_table :expenditures do |t|
      t.string :expense_type
      t.float :amount
      t.integer :period
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
