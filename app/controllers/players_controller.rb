class PlayersController < ApplicationController

  def new
    @player = Player.new
  end

  def create
    @player = Player.create(player_params)
    redirect_to player_path(@player.id)
  end

  def show
    @player = Player.find(params[:id])
  end

  private

  def player_params
    params.require(:player).permit(:username, :password, :password_confirmation)
  end

end
