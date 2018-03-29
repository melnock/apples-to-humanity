class PlayersController < ApplicationController

  def new
    @player = Player.new
  end

  def create
    @player = Player.create(player_params)
    if @player.valid?
      redirect_to login_path
    else
      flash[:notice] = "Please enter valid username and password!"
      redirect_to new_player_path
    end
  end

  def show
    @player = Player.find(params[:id])
  end

  private

  def player_params
    params.require(:player).permit(:username, :password, :password_confirmation)
  end

end
