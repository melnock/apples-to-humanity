class DealsController < ApplicationController

  def new
    @deal = Deal.new
  end

  def create
    @deal = Deal.new(deal_params)
    @deal.save
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
