class CreateFinancialStudentScores < ActiveRecord::Migration[5.0]
  def change
    create_table :financial_student_scores do |t|
      t.float :self_sponsored
      t.float :government_sponsored
      t.float :parent_sponsored
      t.float :verified
      t.text :description

      t.timestamps
    end
  end
end
