class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def edit
    set_game
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to @game
    else
      redirect_to new_game_path
    end
  end

  def update
    set_game
  end

  def show
  end

  def destroy
    set_game
    @game.destroy
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:name)
  end
end
