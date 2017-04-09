class CreateMobileData < ActiveRecord::Migration[5.0]
  def change
    create_table :mobile_data do |t|
      t.float :call_duration
      t.string :receiver
      t.string :sender
      t.string :handset_used
      t.float :data_usage
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
