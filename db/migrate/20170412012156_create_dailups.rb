class CreateDailups < ActiveRecord::Migration[5.0]
  def change
    create_table :dailups do |t|
      t.datetime :called_at
      t.string :number_called
      t.integer :duration

      t.timestamps
    end
  end
end
