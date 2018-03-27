class Hand < ApplicationRecord
  belongs_to :deal
  belongs_to :card

  def get_a_card
    @cards = Card.all.select{|card| card.black == false}
    @cards.sample
  end

  def get_a_black_card
    @black_cards = Card.all.select{|card| card.black == true}
    @black_cards.sample
  end
end
