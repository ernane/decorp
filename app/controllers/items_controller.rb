class ItemsController < ApplicationController
  def index
     respond_to do |format|
      format.json { render json: ItemDatatable.new(view_context) }
    end
  end
end
