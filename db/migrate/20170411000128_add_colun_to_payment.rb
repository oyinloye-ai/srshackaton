class AddColunToPayment < ActiveRecord::Migration[5.0]
  def change
    add_column :payments, :paid, :boolean
  end
end
