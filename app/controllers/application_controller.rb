class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :logged_in?, :current_user

  def current_user
    if session[:player_id]
    @player = Player.find_by(id: session[:player_id])
  end
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
