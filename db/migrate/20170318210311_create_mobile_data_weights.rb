class CreateMobileDataWeights < ActiveRecord::Migration[5.0]
  def change
    create_table :mobile_data_weights do |t|
      t.float :data_usage
      t.float :call_duration
      t.float :installing_app

      t.timestamps
    end
  end
end
