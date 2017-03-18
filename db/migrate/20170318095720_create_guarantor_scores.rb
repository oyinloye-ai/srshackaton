class CreateGuarantorScores < ActiveRecord::Migration[5.0]
  def change
    create_table :guarantor_scores do |t|
      t.float :employed_gov
      t.float :employed_known_company
      t.float :employed_unknown
      t.float :demographic_data
      t.float :verified
      t.text :description

      t.timestamps
    end
  end
end
