class CreateInstitutions < ActiveRecord::Migration[5.0]
  def change
    create_table :institutions do |t|
      t.string :name
      t.datetime :start
      t.datetime :end
      t.string :loan
      t.integer :amount
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
