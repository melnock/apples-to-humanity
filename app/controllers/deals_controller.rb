class DealsController < ApplicationController

  def new
    @deal = Deal.new
  end

  def create
    @deal = Deal.where(deal_params).first_or_create
    redirect_to game_path(@deal.game_id)
  end

  def edit
    @deal = Deal.find(params[:id])
  end

  def update
    @deal = Deal.find(params[:id])
    @deal.update(deal_params)
  end

  private

  def deal_params
    params.require(:deal).permit(:hand_id, :game_id, :player_id)
  end

end
