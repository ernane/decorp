class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string  :description, null: false
      t.decimal :value,       null: false, precision: 15, scale: 3
      t.string  :invoice_id,  null: false, limit: 15,     index: true

      t.timestamps null: false
    end
  end
end
