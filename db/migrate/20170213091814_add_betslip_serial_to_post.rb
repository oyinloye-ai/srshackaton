class AddBetslipSerialToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :betslip, :string
  end
end
