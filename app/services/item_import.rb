class ItemImport
  class << self
    def import(params)
      file    = params[:file]
      invoice = params[:number]

      CSV.foreach(file.path, headers: true) do |row|
        item_hash = row.to_hash
        item = Item.where("description = ? AND value = ?", item_hash["description"], item_hash["value"]).first

        if item.nil?
          Item.create(description: item_hash["description"], value: item_hash["value"], invoice_id: invoice)
        else
          Item.update_attributes(description: item_hash["description"], value: item_hash["value"])
        end
      end
    end
  end
end
