class AddUserToDailupsAndMessages < ActiveRecord::Migration[5.0]
  def change
  	add_column :messages, :user_id, :integer
  	add_column :dailups, :user_id, :integer
  	add_column :messages, :amount, :float
  end
end
