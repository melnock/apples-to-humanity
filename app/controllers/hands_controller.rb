class HandsController < ApplicationController

  def new
    @hand = Hand.new
  end

  def create
    @hand = Hand.new(hand_params)
    @hand.save
  end

  private

  def hand_params
    params.require(:hand).permit(:deal_id, :card_id)
  end

end
