class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    if current_trader
      return current_trader
    elsif current_customer
      return current_customer
    else
      return nil
    end
  end
end
