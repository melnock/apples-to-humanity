class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    Player.find(session[:player_id])
  end

  def logged_in?
    !!current_user
  end
end
