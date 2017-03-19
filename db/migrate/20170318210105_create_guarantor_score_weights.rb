class CreateGuarantorScoreWeights < ActiveRecord::Migration[5.0]
  def change
    create_table :guarantor_score_weights do |t|
      t.float :employed_govt
      t.float :employed_unknow_comp
      t.float :guarantor_score
      t.float :verified
      t.text :description

      t.timestamps
    end
  end
end
