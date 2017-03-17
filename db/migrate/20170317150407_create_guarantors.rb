class CreateGuarantors < ActiveRecord::Migration[5.0]
  def change
    create_table :guarantors do |t|
      t.string :fullname
      t.string :business
      t.float :annual_income
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
