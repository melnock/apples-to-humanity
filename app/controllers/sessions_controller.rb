class SessionsController < ApplicationController

  def new
  end

  def create
    @player = Player.find_by(username: params[:username])
    if @player && @player.authenticate(params[:password])
      session[:player_id] = @player.id
    else
      redirect_to login_path
    end
  end

  def destroy
    reset_session
  end
end
