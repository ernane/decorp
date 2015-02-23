class DashboardController < ApplicationController
  def index
    @users = User.order(:first_name)
  end
end
