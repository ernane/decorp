class DashboardController < ApplicationController
  layout "dashboard"

  def index
    @users = User.order(:first_name)
  end
end
