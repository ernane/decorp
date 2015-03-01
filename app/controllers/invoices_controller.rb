class InvoicesController < ApplicationController
  def show
    @user = User.find(params[:user_id])
    @invoice =  @user.invoices.find(params[:id])
  end

  def import
    ItemImport.import(import_params)
    redirect_to root_url
  end

private

  def import_params
    params.permit(:file, :number)
  end
end
