class CreateSavings < ActiveRecord::Migration[5.0]
  def change
    create_table :savings do |t|
      t.string :account_number
      t.float :amount
      t.datetime :date
      t.string :image
      t.boolean :verified, default: false

      t.timestamps
    end
  end
end
