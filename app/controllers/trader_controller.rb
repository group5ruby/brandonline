class TraderController < ApplicationController
  def dashboard
    @trader = current_user
  end
end