class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token 

  def new
  end

  def create
    @player = Player.find_by(username: params[:username])
    if @player && @player.authenticate(params[:password])
      session[:player_id] = @player.id
      redirect_to games_path
    else
      redirect_to login_path
    end
  end

  def destroy
    reset_session
    redirect_to login_path
  end
end
