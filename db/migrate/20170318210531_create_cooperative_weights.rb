class CreateCooperativeWeights < ActiveRecord::Migration[5.0]
  def change
    create_table :cooperative_weights do |t|
      t.float :registered_cooperative
      t.float :know_cooperative
      t.float :leadership_position
      t.float :active_member
      t.float :credit_score_from_cooperative
      t.float :verified

      t.timestamps
    end
  end
end
