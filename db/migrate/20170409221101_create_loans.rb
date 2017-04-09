class CreateLoans < ActiveRecord::Migration[5.0]
  def change
    create_table :loans do |t|
      t.string :status
      t.string :category
      t.string :purpose
      t.string :description
      t.integer :interest_rate
      t.datetime :start_date
      t.datetime :final_date
      t.references :user, foreign_key: true
      t.float :requested_amount
      t.float :purpose_amount
      t.float :agreed_amount
      t.integer :payment_frequency

      t.timestamps
    end
  end
end
