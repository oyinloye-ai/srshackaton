class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.datetime :sent_at
      t.text :content

      t.timestamps
    end
  end
end
