class CreateCooperatives < ActiveRecord::Migration[5.0]
  def change
    create_table :cooperatives do |t|
      t.string :name
      t.string :leader_name
      t.text :description
      t.text :address
      t.string :government_id
      t.string :affiliation
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
