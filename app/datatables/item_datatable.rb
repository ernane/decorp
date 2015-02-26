class ItemDatatable < AjaxDatatablesRails::Base

  include AjaxDatatablesRails::Extensions::Kaminari

  def sortable_columns
    # Declare strings in this format: ModelName.column_name
    @sortable_columns ||= ['Item.description', 'Item.value']
  end

  def searchable_columns
    # Declare strings in this format: ModelName.column_name
    @searchable_columns ||= ['Item.description', 'Item.value']
  end

  private

  def data
    records.map do |record|
      [
        record.description,
        record.value
      ]
    end
  end

  def get_raw_records
    Item.where("invoice_id = ? ", params[:number])
  end

  # ==== Insert 'presenter'-like methods below if necessary

  #params.each do |key,value|
  #  Rails.logger.warn "Param #{key}: #{value}"
  #end
end
