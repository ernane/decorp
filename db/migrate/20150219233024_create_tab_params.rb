class CreateTabParams < ActiveRecord::Migration
  def change
    create_table :tab_params do |t|

      t.integer :application, null: false, limit: 2
      t.integer :year,        null: false, limit: 4
      t.integer :operation,   null: false, limit: 2
      t.integer :number,      null: false, limit: 8

      t.timestamps null: false
    end
  end
end
