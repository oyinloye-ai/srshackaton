class CreateBioScoreWeights < ActiveRecord::Migration[5.0]
  def change
    create_table :bio_score_weights do |t|
      t.float :completed
      t.float :verified
      t.text :description

      t.timestamps
    end
  end
end
