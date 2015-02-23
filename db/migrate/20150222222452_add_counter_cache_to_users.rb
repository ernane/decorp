class AddCounterCacheToUsers < ActiveRecord::Migration
  def change
    add_column :users, :invoices_count, :integer, default: 0
  end
end
