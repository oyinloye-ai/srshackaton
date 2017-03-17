class CreatePinnacles < ActiveRecord::Migration[5.0]
  def change
    create_table :pinnacles do |t|
      t.integer :sport
      t.jsonb :fixture
      t.jsonb :odds

      t.timestamps
    end
  end
end
