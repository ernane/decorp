class Item < ActiveRecord::Base
  belongs_to :invoice, foreign_key: "invoice_id"
end
