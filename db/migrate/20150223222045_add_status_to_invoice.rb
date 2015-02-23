class AddStatusToInvoice < ActiveRecord::Migration
  def change
    add_column :invoices, :status, :integer, default: 0, limit: 1
  end
end
