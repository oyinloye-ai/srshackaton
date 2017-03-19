class CreateEduScoreWeights < ActiveRecord::Migration[5.0]
  def change
    create_table :edu_score_weights do |t|
      t.float :school_name
      t.float :fresher
      t.float :mid_year
      t.float :last_year
      t.float :higher_degree
      t.float :first_degree
      t.float :others
      t.float :verified
      t.text :description

      t.timestamps
    end
  end
end
