class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :password_digest
      t.string :country
      t.string :phonenumber
      t.date :dateofbirth
      t.string :photourl

      t.timestamps
    end
  end
end
