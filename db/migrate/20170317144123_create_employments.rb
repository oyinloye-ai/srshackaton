class CreateEmployments < ActiveRecord::Migration[5.0]
  def change
    create_table :employments do |t|
      t.string :status
      t.datetime :start
      t.datetime :end
      t.float :average_income
      t.string :image
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
