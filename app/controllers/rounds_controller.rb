class RoundsController < ApplicationController

  def new
    @round = Round.new
  end

  def create
    @round = Round.new(round_params)
    @round.save
  end

  def show
    @round = Round.find(params[:id])
  end

  private

  def round_params
    params.require(:round).permit(:game_id, :black_card_id)
  end

end
