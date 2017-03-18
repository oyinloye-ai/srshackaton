class CreateEducationalScores < ActiveRecord::Migration[5.0]
  def change
    create_table :educational_scores do |t|
      t.float :school_name
      t.float :fresher
      t.float :mid-year
      t.float :last_year
      t.float :higher_degree
      t.float :first_degree
      t.float :verified

      t.timestamps
    end
  end
end
