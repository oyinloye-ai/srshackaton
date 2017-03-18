class CreateBioDataScores < ActiveRecord::Migration[5.0]
  def change
    create_table :bio_data_scores do |t|
      t.float :completed
      t.float :verified

      t.timestamps
    end
  end
end
