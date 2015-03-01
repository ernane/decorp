class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string      :description, null: false
      t.decimal     :value,       null: false, precision: 15, scale: 3
      t.references  :invoice, index: true

      t.timestamps null: false
    end
    add_foreign_key :items, :invoices
  end
end
