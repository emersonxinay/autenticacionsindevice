class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private
  def authenticate_user!
    red users_sing_in_path unless helpers.logged?

  end
end
