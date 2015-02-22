class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name,    null: false, limit: 50
      t.string :last_name,     null: false, limit: 50
      t.string :email_address, null: false, limit: 80

      t.timestamps null: false
    end
    add_index :users, :email_address, unique: true
  end
end
