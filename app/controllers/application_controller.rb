class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :logged_in?

  def current_user
    Player.find(session[:player_id])
  end

  def logged_in?
    !!current_user
  end

  def authorized
    if !logged_in?
      redirect_to login_path
    end
  end
  
end
