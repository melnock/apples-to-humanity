class Hand < ApplicationRecord
  belongs_to :deal
  belongs_to :card

  def get_a_card
    @cards = Card.all.select{|card| card.black == false}
    @cards.sample
  end

  
end
