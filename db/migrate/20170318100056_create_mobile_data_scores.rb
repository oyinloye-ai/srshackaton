class CreateMobileDataScores < ActiveRecord::Migration[5.0]
  def change
    create_table :mobile_data_scores do |t|
      t.float :data_usage_cap
      t.float :call_duration
      t.float :installed_app
      t.text :description

      t.timestamps
    end
  end
end
