class Deal < ApplicationRecord
  belongs_to :player
  belongs_to :game
  has_many :hands
  has_many :cards, through: :hands

  DISCARD = []

  def deal_a_card
    @hand = Hand.new
    verify_card_unique
    @hand.card = @card
    @hand.deal = self
    @hand.save
    self.hands << @hand
  end

  def verify_card_unique
    @card = @hand.get_a_card
    if DISCARD.include?(@card.id)
      verify_card_unique
    else
      DISCARD << @card.id
    end
  end

end
